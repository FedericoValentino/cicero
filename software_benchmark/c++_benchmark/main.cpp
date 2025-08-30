#include "re2_driver.hpp"
#include <iostream>
#include <fstream>

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

uint32_t read_program(FILE *program, re2_driver& driver)
{
    std::vector<uint16_t> code;
    
    while(!feof(program))
    {
        uint16_t currentInstr = 0;
        fscanf(program, "%6hx\n", &currentInstr);
        code.push_back(currentInstr);
    }

    return driver.load_code(code);
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

void start_cicero(re2_driver& cicero, std::vector<std::string>& strings, std::vector<std::string>& regexes, std::string re2compiler_path)
{
    int64_t total_time = 0;

    std::ofstream outputFile("output.csv");


    for(std::string regex : regexes)
    {
        //Step 1: compile the regex

        //Call to python to generate the file
        //python3 ../../../cicero_compiler/re2compiler.py -data="(this|that)" -o current_regex.re
        std::string command = "python3 " + re2compiler_path + " -data=\"" + regex + "\" -o current_regex.regex";

        system(command.c_str());

        outputFile << regex + "\n";

        uint32_t string_index = 0;
        for(std::string string : strings)
        {
            FILE *program = fopen("current_regex.regex", "r");

            cicero.write_cmd(re2_driver::CMD_RESET);
            cicero.write_cmd(re2_driver::CMD_RESET_PERF_CNTRS);

            //Step 2: Load regex and string
            uint32_t code_end_addr = read_program(program, cicero);

            uint32_t string_end_addr = read_string(string.c_str(), code_end_addr, cicero);

            if(cicero.fast_transfer)
            {
                uint32_t len = string_end_addr/4;

                printf("Length of code+string: 0x%08x\n", len);

                cicero.start_AXI_M_transfer(len);
            }
            //At this point CICERO driver's internal counter has the total time for memory transfers

            auto start = std::chrono::high_resolution_clock::now();

            cicero.start(code_end_addr, string_end_addr);

            uint32_t accepted = cicero.wait_complete();

            auto stop = std::chrono::high_resolution_clock::now();

            auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>(stop - start);

            cicero.execution_time = duration.count();

            uint32_t ccs;
            cicero.get_elapsed_clock_cycles_report(ccs);

            outputFile  << string << "," 
                        << string_index << ","
                        << accepted << ","
                        << ccs << "\n";

            total_time += cicero.memory_transfer_time + cicero.execution_time;

            string_index++;
        }
    }
    outputFile << total_time;
    outputFile.close();
    printf("Computing each string with each regex took %d nanoseconds", total_time);
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

    if(argc != 5)
    {
        std::cout<<"Usage: ./re2_driver_xrt <regexes_file_path> <strings_file_path> <compiler_path> <fast_transfer: [1|0]>"<<std::endl;
    }

    //Step 1: read strings and regexes
    std::vector<std::string> strings;
    std::vector<std::string> regexes;

    read_lines(regexes, argv[1]);
    read_lines(strings, argv[2]);


    //Step 2: setup cicero
    void* base_ptr_lite = open_device_axi_lite();

    void* base_ptr_full = open_device_axi_full();

    int fast_transfer = atoi(argv[4]);

    re2_driver cicero(base_ptr_lite, base_ptr_full, fast_transfer);

    cicero.test_write_capabilities();

    //Step 3: Start tests on cicero
    start_cicero(cicero, strings, regexes, argv[3]);
    
    return 0;
}