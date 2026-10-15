#include "re2_driver.hpp"
#include <iostream>
#include <fstream>
#include <algorithm>
#include <climits>

#include <fcntl.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <unistd.h>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <cstring>

#define CICERO_AXI_L_BASE_ADDR 0xA0000000  // Replace with actual physical base address
#define CICERO_AXI_F_BASE_ADDR 0x40000000
#define AXI_L_MAP_SIZE 0x1000
#define AXI_F_MAP_SIZE 0x100000

void* open_device_axi_lite() {
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        perror("Error opening /dev/mem");
        exit(1);
    }

    void* base_ptr = mmap(NULL, AXI_L_MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, CICERO_AXI_L_BASE_ADDR);
    if (base_ptr == MAP_FAILED) {
        perror("Error mapping memory");
        exit(1);
    }

    close(fd);
    return base_ptr;
}

void* open_device_axi_full() {
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        perror("Error opening /dev/mem");
        exit(1);
    }

    void* base_ptr = mmap(NULL, AXI_F_MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, CICERO_AXI_F_BASE_ADDR);
    if (base_ptr == MAP_FAILED) {
        perror("Error mapping memory");
        exit(1);
    }

    close(fd);
    return base_ptr;
}

// Mock: allocate a fake memory region for AXI Lite
void* open_device_axi_lite_mock() {
    void* base_ptr = malloc(AXI_L_MAP_SIZE);
    if (!base_ptr) {
        perror("Error allocating mock AXI Lite memory");
        exit(1);
    }
    memset(base_ptr, 0, AXI_L_MAP_SIZE); // initialize to 0 for determinism
    printf("[MOCK] AXI Lite mapped at fake addr %p (size=%#x, base=%#x)\n",
           base_ptr, AXI_L_MAP_SIZE, CICERO_AXI_L_BASE_ADDR);
    return base_ptr;
}

// Mock: allocate a fake memory region for AXI Full
void* open_device_axi_full_mock() {
    void* base_ptr = malloc(AXI_F_MAP_SIZE);
    if (!base_ptr) {
        perror("Error allocating mock AXI Full memory");
        exit(1);
    }
    memset(base_ptr, 0, AXI_F_MAP_SIZE); // initialize to 0
    printf("[MOCK] AXI Full mapped at fake addr %p (size=%#x, base=%#x)\n",
           base_ptr, AXI_F_MAP_SIZE, CICERO_AXI_F_BASE_ADDR);
    return base_ptr;
}

std::vector<uint16_t> read_program(const char* path)
{
    std::vector<uint16_t> code;

    FILE *program = fopen(path, "r");
    if(program == NULL)
    {
        perror("Error opening compiled regex");
        exit(1);
    }

    while(!feof(program))
    {
        uint16_t currentInstr = 0;
        fscanf(program, "%6hx\n", &currentInstr);
        code.push_back(currentInstr);
    }

    fclose(program);
    return code;
}

// Wrap in single quotes so the shell doesn't expand $, `, \ or " inside the regex
std::string shell_quote(const std::string& s)
{
    std::string quoted = "'";
    for(char c : s)
    {
        if(c == '\'')
        {
            quoted += "'\\''";
        }
        else
        {
            quoted += c;
        }
    }
    quoted += "'";
    return quoted;
}

uint32_t read_string(const char string[], uint32_t addr, re2_driver& driver)
{
    std::vector<uint8_t> string_chars;

    for(int i = 0; ; i++)
    {
        char c = string[i];
        if(c == '\0')
        {
            break;
        }

        string_chars.push_back(c);
    }

    return driver.load_string(string_chars, addr);
}

// Strip the extension so "output_c_fl.txt" becomes "output_c_fl"
std::string output_base(const std::string& output_file)
{
    size_t dot = output_file.find_last_of('.');
    size_t slash = output_file.find_last_of('/');
    if(dot == std::string::npos || (slash != std::string::npos && dot < slash))
    {
        return output_file;
    }
    return output_file.substr(0, dot);
}

void start_cicero(re2_driver& cicero, std::vector<std::string>& strings, std::vector<std::string>& regexes, std::string re2compiler_path, std::string output_file, int cc_id_bits, uint32_t sample_every, bool per_core)
{
    int64_t total_time = 0;

    std::string base = output_base(output_file);

    // One row per regex, counters summed over every string and every core
    std::ofstream summaryFile(base + "_summary.csv");
    summaryFile << "regex_id,n_strings,n_accepted,cc_sum,cc_min,cc_max,"
                << "cache_hits,cache_miss,fifo_max,fifo_fulls,"
                << "fetch_ccs,fetch_stalls,exe1_ccs,exe1_stalls,exe2_ccs,exe2_stalls\n";

    // One row per (regex, string) pair, only for accepted strings and every sample_every-th string
    std::ofstream detailFile(base + "_detail.csv");
    detailFile << "regex_id,string_id,accepted,cc,"
               << "cache_hits,cache_miss,fifo_max,fifo_fulls,"
               << "fetch_ccs,fetch_stalls,exe1_ccs,exe1_stalls,exe2_ccs,exe2_stalls\n";

    // Optional: one row per core for every detail row
    std::ofstream perCoreFile;
    if(per_core)
    {
        perCoreFile.open(base + "_percore.csv");
        perCoreFile << "regex_id,string_id,core,fifoSize,fifoFull,cacheHits,cacheMiss,"
                    << "fetchCC,fetchStall,exe1CC,exe1Stall,exe2CC,exe2Stall\n";
    }

    uint32_t regex_index = 0;
    for(std::string regex : regexes)
    {
        //Step 1: compile the regex

        //Call to python to generate the file
        //python3 ../../../cicero_compiler/re2compiler.py -data="(this|that)" -o current_regex.re
        std::string command = "python3 " + re2compiler_path + " -data=" + shell_quote(regex) + " -o current_regex.regex";

        remove("current_regex.regex");
        if(system(command.c_str()) != 0)
        {
            fprintf(stderr, "Compilation failed for regex %u: %s\n", regex_index, regex.c_str());
            exit(1);
        }

        std::vector<uint16_t> code = read_program("current_regex.regex");

        printf("%d\n", regex_index);

        uint64_t n_accepted = 0;
        uint64_t cc_sum = 0;
        uint32_t cc_min = UINT32_MAX;
        uint32_t cc_max = 0;
        uint64_t sum_cache_hits = 0, sum_cache_miss = 0, sum_fifo_fulls = 0;
        uint32_t max_fifo = 0;
        uint64_t sum_fetch_ccs = 0, sum_fetch_stalls = 0;
        uint64_t sum_exe1_ccs = 0, sum_exe1_stalls = 0;
        uint64_t sum_exe2_ccs = 0, sum_exe2_stalls = 0;

        uint32_t string_index = 0;
        for(std::string string : strings)
        {
            printf("%d ", string_index);
            cicero.write_cmd(re2_driver::CMD_RESET);
            cicero.write_cmd(re2_driver::CMD_RESET_PERF_CNTRS);

            //Step 2: Load regex and string
            uint32_t code_end_addr = cicero.load_code(code);

            uint32_t string_end_addr = read_string(string.c_str(), code_end_addr, cicero);

            if(cicero.fast_transfer)
            {
                uint32_t len = string_end_addr/4;

                //printf("Length of code+string: 0x%08x\n", len);

                cicero.start_AXI_M_transfer(len);
            }
            //At this point CICERO driver's internal counter has the total time for memory transfers

            cicero.verify_code();
            cicero.verify_string();

            auto start = std::chrono::high_resolution_clock::now();

            cicero.start(code_end_addr, string_end_addr);

            uint32_t accepted = cicero.wait_complete();

            auto stop = std::chrono::high_resolution_clock::now();

            auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>(stop - start);

            cicero.execution_time = duration.count();

            uint32_t ccs;
            cicero.get_elapsed_clock_cycles_report(ccs);

            total_time += cicero.memory_transfer_time + cicero.execution_time;

            std::vector<re2_driver::core_counters> cores = cicero.read_performance_counters(cc_id_bits);

            // Sum the counters of all cores for this run
            uint64_t cache_hits = 0, cache_miss = 0, fifo_fulls = 0;
            uint32_t fifo_max = 0;
            uint64_t fetch_ccs = 0, fetch_stalls = 0;
            uint64_t exe1_ccs = 0, exe1_stalls = 0;
            uint64_t exe2_ccs = 0, exe2_stalls = 0;
            for(const re2_driver::core_counters& c : cores)
            {
                cache_hits   += c.cache_hits;
                cache_miss   += c.cache_miss;
                fifo_fulls   += c.fifoFulls;
                fifo_max      = std::max(fifo_max, c.fifoSize);
                fetch_ccs    += c.fetch_ccs;
                fetch_stalls += c.fetch_stalls;
                exe1_ccs     += c.exe1_ccs;
                exe1_stalls  += c.exe1_stalls;
                exe2_ccs     += c.exe2_ccs;
                exe2_stalls  += c.exe2_stalls;
            }

            n_accepted += (accepted == 1);
            cc_sum += ccs;
            cc_min = std::min(cc_min, ccs);
            cc_max = std::max(cc_max, ccs);
            sum_cache_hits   += cache_hits;
            sum_cache_miss   += cache_miss;
            sum_fifo_fulls   += fifo_fulls;
            max_fifo          = std::max(max_fifo, fifo_max);
            sum_fetch_ccs    += fetch_ccs;
            sum_fetch_stalls += fetch_stalls;
            sum_exe1_ccs     += exe1_ccs;
            sum_exe1_stalls  += exe1_stalls;
            sum_exe2_ccs     += exe2_ccs;
            sum_exe2_stalls  += exe2_stalls;

            bool sampled = sample_every != 0 && string_index % sample_every == 0;
            if(accepted == 1 || sampled)
            {
                detailFile  << regex_index << ","
                            << string_index << ","
                            << accepted << ","
                            << ccs << ","
                            << cache_hits << ","
                            << cache_miss << ","
                            << fifo_max << ","
                            << fifo_fulls << ","
                            << fetch_ccs << ","
                            << fetch_stalls << ","
                            << exe1_ccs << ","
                            << exe1_stalls << ","
                            << exe2_ccs << ","
                            << exe2_stalls << "\n";

                if(per_core)
                {
                    for(size_t i = 0; i < cores.size(); i++)
                    {
                        const re2_driver::core_counters& c = cores[i];
                        perCoreFile << regex_index << ","
                                    << string_index << ","
                                    << i << ","
                                    << c.fifoSize << ","
                                    << c.fifoFulls << ","
                                    << c.cache_hits << ","
                                    << c.cache_miss << ","
                                    << c.fetch_ccs << ","
                                    << c.fetch_stalls << ","
                                    << c.exe1_ccs << ","
                                    << c.exe1_stalls << ","
                                    << c.exe2_ccs << ","
                                    << c.exe2_stalls << "\n";
                    }
                }
            }

            string_index++;
        }

        summaryFile << regex_index << ","
                    << string_index << ","
                    << n_accepted << ","
                    << cc_sum << ","
                    << (string_index ? cc_min : 0) << ","
                    << cc_max << ","
                    << sum_cache_hits << ","
                    << sum_cache_miss << ","
                    << max_fifo << ","
                    << sum_fifo_fulls << ","
                    << sum_fetch_ccs << ","
                    << sum_fetch_stalls << ","
                    << sum_exe1_ccs << ","
                    << sum_exe1_stalls << ","
                    << sum_exe2_ccs << ","
                    << sum_exe2_stalls << "\n";

        printf("\n");
        regex_index++;
    }

    std::ofstream outputFile(output_file);
    outputFile << total_time;
    outputFile.close();
    summaryFile.close();
    detailFile.close();
    if(per_core)
    {
        perCoreFile.close();
    }
    printf("Computing each string with each regex took %ld nanoseconds\n", total_time);
}

void read_lines(std::vector<std::string>& vec, char* file)
{
    std::ifstream filep(file);
    if (!filep) {
        throw std::runtime_error("Failed to open file");
    }

    std::string s;
    while (std::getline(filep, s)) {
        vec.push_back(s);
    }

    filep.close();
}


int main(int argc, char* argv[])
{

    if(argc < 7 || argc > 9)
    {
        std::cout<<"Usage: ./re2_driver_xrt <regexes_file_path> <strings_file_path> <compiler_path> <output_file> <fast_transfer: [1|0]> <cc_id_bits> [sample_every: 0 = accepted only] [per_core: [1|0]]"<<std::endl;
        return -1;
    }

    uint32_t sample_every = argc > 7 ? atoi(argv[7]) : 0;
    bool per_core = argc > 8 ? atoi(argv[8]) : false;

    //Step 1: read strings and regexes
    std::vector<std::string> strings;
    std::vector<std::string> regexes;

    read_lines(regexes, argv[1]);
    read_lines(strings, argv[2]);


    //Step 2: setup cicero
    void* base_ptr_lite = open_device_axi_lite();

    void* base_ptr_full = open_device_axi_full();

    int fast_transfer = atoi(argv[5]);

    re2_driver cicero(base_ptr_lite, base_ptr_full, fast_transfer);

    cicero.test_write_capabilities();

    //Step 3: Start tests on cicero
    start_cicero(cicero, strings, regexes, argv[3], argv[4], atoi(argv[6]), sample_every, per_core);
    
    return 0;
}