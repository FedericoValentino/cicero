#include <vector>
#include <cstdint>
#include <iostream>
#include <stdio.h>
#include <assert.h>

class re2_driver {
public:

    static constexpr int word_size_in_bytes = 4;
    static constexpr int window_size_in_chars = 32;
    static constexpr int CC_ID_BITS = 3;

    enum REGISTERS{
        DATA_IN     = 0x00,
        ADDRESS     = 0x04,
        START_CC    = 0x08,
        END_CC      = 0x0C,
        CMD         = 0x10,
        STATUS      = 0x14,
        DATA_OUT    = 0x18,
    };

    enum COMMANDS{
        CMD_NOP                  = 0x00,
        CMD_WRITE                = 0x01,
        CMD_READ                 = 0x02,
        CMD_START                = 0x03,
        CMD_RESET                = 0x04,
        CMD_READ_ELAPSED_CLOCK   = 0x05,
        CMD_RESTART              = 0x06,
        CMD_READ_FIFO_COUNT      = 0x07,
        CMD_READ_CACHE_HITS      = 0x08,
        CMD_READ_CACHE_MISS      = 0x09,
        CMD_READ_FETCH_CLOCK     = 0x0A,
        CMD_READ_EXE1_CLOCK      = 0x0B,
        CMD_READ_EXE2_CLOCK      = 0x0C,
        CMD_READ_FETCH_STALLS    = 0x0D,
        CMD_READ_EXE1_STALLS     = 0x0E,
        CMD_READ_EXE2_STALLS     = 0x0F,
        CMD_READ_FIFO_FULLS      = 0x10,
        CMD_RESET_PERF_CNTRS     = 0x11,
    };

    enum STATUS{
        STATUS_IDLE              = 0,
        STATUS_RUNNING           = 1,
        STATUS_ACCEPTED          = 2,
        STATUS_REJECTED          = 3,
        STATUS_ERROR             = 4,
    };

    void* base_addr;

    std::vector<uint32_t> current_code;

    std::vector<uint8_t> current_string;
    uint32_t start_string_addr;

    re2_driver(void* base_addr)
    {
        this->base_addr = base_addr;
    }


    /*----------REGISTER INTERACTION----------*/
    void write_data_in(uint32_t VAL)
    {
        write(DATA_IN, VAL);
    }

    uint32_t read_data_in()
    {
        return read(DATA_IN);
    }

    void write_address(uint32_t VAL)
    {
        write(ADDRESS, VAL / word_size_in_bytes);
    }

    uint32_t read_address()
    {
        return read(ADDRESS);
    }

    void write_start_cc(uint32_t VAL)
    {
        write(START_CC, VAL);
    }

    uint32_t read_start_cc()
    {
        return read(START_CC);
    }

    void write_end_cc(uint32_t VAL)
    {
        write(END_CC, VAL);
    }

    uint32_t read_end_cc()
    {
        return read(END_CC);
    }

    void write_cmd(uint32_t VAL)
    {
        write(CMD, VAL);
    }

    uint32_t read_cmd()
    {
        return read(CMD);
    }

    uint32_t read_status()
    {
        return read(STATUS);
    }

    uint32_t read_data_o()
    {
        return read(DATA_OUT);
    }

    void read_performance_counters()
    {
        uint32_t elapsed_ccs;
        uint32_t fifoSize;
        uint32_t fifoFulls;

        uint32_t cache_hits;
        uint32_t cache_miss;

        uint32_t fetch_ccs;
        uint32_t exe1_ccs;
        uint32_t exe2_ccs;

        uint32_t fetch_stalls;
        uint32_t exe1_stalls;
        uint32_t exe2_stalls;


        get_elapsed_clock_cycles_report(elapsed_ccs);
        printf("clock cycles elapsed         %d:\n", elapsed_ccs);
        for(int i = 0; i < CC_ID_BITS; i++)
        {
            get_fifo_sizing_report(i, fifoSize, fifoFulls);
            get_hit_miss_report(i, cache_hits, cache_miss);
            get_cycles_report(i, fetch_ccs, exe1_ccs, exe2_ccs);
            get_stalls_report(i, fetch_stalls, exe1_stalls, exe2_stalls);


            printf("---------------------------------------------\n");
            printf("core         %d:\n", i);
            printf("fifo statistics:\n");
            printf("max size:     %d\n", fifoSize);
            printf("full events:  %d\n", fifoFulls);
            printf("cache statistics:\n");
            printf("hits:         %d\n", cache_hits);
            printf("miss:         %d\n", cache_miss);
            printf("clock cycles per stage:\n");
            printf("fetch cycles: %d\n", fetch_ccs);
            printf("fetch stalls: %d\n", fetch_stalls);
            printf("exe1  cycles: %d\n", exe1_ccs);
            printf("exe1  stalls: %d\n", exe1_stalls);
            printf("exe2  cycles: %d\n", exe2_ccs);
            printf("exe2  stalls: %d\n", exe2_stalls);
        }
        printf("---------------------------------------------\n");
    }

    /*----------LOADING CODE AND STRING----------*/

    uint32_t load_code(const std::vector<uint16_t>& code) 
    {
        std::vector<uint8_t> bytes;
        for (uint16_t word : code) {
            current_code.push_back(word);
            bytes.push_back(word & 0xFF);
            bytes.push_back((word >> 8) & 0xFF);
        }
        auto addr = write_bytes(bytes, 0);
        return ((addr + window_size_in_chars - 1) / window_size_in_chars) * window_size_in_chars;
    }

    uint32_t load_string(const std::vector<uint8_t>& str, uint32_t start_addr) 
    {
        start_string_addr = start_addr;
        for (uint8_t byte : str) {
            current_string.push_back(byte);
        }


        uint32_t aligned = ((start_addr + window_size_in_chars - 1) / window_size_in_chars) * window_size_in_chars;
        return write_bytes(str, aligned);
    }


    void verify_code()
    {
        uint32_t current_address = 0;

        for(int i = 0;  i< current_code.size(); i+=2)
        {
            uint32_t word1 = current_code[i];
            uint32_t word2 = current_code[i+1];

            uint32_t bigword = (0x00000000 | word1) | (word2 << 16);

            write_address(current_address);
            write_cmd(CMD_READ);

            uint32_t code_word = read_data_o();

            if(code_word != bigword)
            {
                std::cout<<"EXPECTED " <<std::hex<<bigword<<std::dec<<" INSTEAD GOT "<<std::hex<<read_data_o()<<std::endl;
                exit(-1);
            }

            write_cmd(CMD_NOP);
            current_address += word_size_in_bytes;
        }

        std::cout<<"CODE VERIFIED"<<std::endl;
    }


    void verify_string()
    {
        uint32_t current_address = start_string_addr;

        for(int i = 0; i < current_string.size(); i+=4)
        {
            uint32_t bigword = 0x00000000;

            for(int j = 0 ; j < current_string.size() && j < 4; j++)
            {
                bigword = bigword | (current_string[i+j] << 8*j);
            }

            write_address(current_address);
            write_cmd(CMD_READ);

            uint32_t code_word = read_data_o();

            if(code_word != bigword)
            {
                std::cout<<"EXPECTED " <<std::hex<<bigword<<std::dec<<" INSTEAD GOT "<<std::hex<<read_data_o()<<std::endl;
                exit(-1);
            }

            write_cmd(CMD_NOP);
            current_address += word_size_in_bytes;
        }
        std::cout<<"STRING VERIFIED"<<std::endl;
    }

    /*----------STATUS CHANGING OPERATIONS----------*/
    void start(uint32_t start_string_address, uint32_t end_string_address)
    {        
        wait_for(STATUS_IDLE);

        std::cout<<"String starts at: "<<std::hex<<start_string_address<<std::endl;
        std::cout<<"String ends at: "<<std::hex<<end_string_address<<std::endl;
        write_start_cc(start_string_address);
        write_end_cc(end_string_address);

        std::cout<<"Status before starting is: "<<std::hex<<read_status()<<std::endl;

        write_cmd(CMD_START);
        std::cout<<"Current command is: "<<std::hex<<read_cmd()<<std::endl;

        write_cmd(CMD_NOP);
    }

    uint32_t wait_complete()
    {
        auto status = read_status();
        std::cout<<"Current status is:"<<std::hex<<status<<std::endl;
        uint64_t count  = 0;
        while(status == STATUS_RUNNING)
        {
            status = read_status();
            std::cout<<"Current status is:"<<std::hex<<status<<std::endl;
            count += 1;
            if (status == STATUS_ERROR)
            {
                return status;
            }
            if(count > 10)
            {
                std::cout<<"Error while waiting"<<std::endl;
                break;
            }
        }

        return status == STATUS_ACCEPTED;
    }

    void wait_for(uint32_t STATUS)
    {
        while(read_status() != STATUS);
    }

    void test_write_capabilities()
    {
        write_cmd(CMD_RESTART);
        write_cmd(CMD_NOP);
        //IF this works then the FPGA is working correctly
        write_address(0x0);
        write_cmd(CMD_WRITE);
        write_data_in(0xDEADBEEF);
        write_cmd(CMD_NOP);
        write_cmd(CMD_READ);

        assert(read_data_o() == 0xDEADBEEF);
    }

private:
    uint32_t read(uint32_t REG) {
        return *((volatile uint32_t*)((char*)base_addr + REG));
    }

    void write(uint32_t REG, uint32_t value) {
        *((volatile uint32_t*)((char*)base_addr + REG)) = value;
    }

    uint32_t write_bytes(const std::vector<uint8_t>& bytes, uint32_t start_addr) 
    {
        uint32_t addr = start_addr;
        bool first = true;

        for (std::size_t i = 0; i < bytes.size(); i += word_size_in_bytes) 
        {
            uint32_t word = 0;
            for (int j = 0; j < word_size_in_bytes && (i + j) < bytes.size(); ++j) 
            {
                word |= (bytes[i + j] << (8 * j));
            }
            write_address(addr);
            write_data_in(word);
            if (first) {
                write_cmd(CMD_WRITE);
                first = false;
            }
            std::cout<<"Wrote byte: "<<std::hex<<word<<std::endl;
            std::cout<<"At Address:"<<std::hex<<addr<<std::endl;
            addr += word_size_in_bytes;
        }

        write_cmd(CMD_NOP);
        return addr;
    }

    void get_fifo_sizing_report(uint32_t i, uint32_t& fifoSize, uint32_t& fifoFulls)
    {
        write_data_in(i);
        write_cmd(CMD_READ_FIFO_COUNT);
        fifoSize = read_data_o();
        write_cmd(CMD_NOP);
        write_cmd(CMD_READ_FIFO_FULLS);
        fifoFulls = read_data_o();
        write_cmd(CMD_NOP);
    }

    void get_hit_miss_report(uint32_t i, uint32_t& cache_hits, uint32_t& cache_miss)
    {
        write_data_in(i);
        write_cmd(CMD_READ_CACHE_HITS);
        cache_hits = read_data_o();
        write_cmd(CMD_NOP);
        write_cmd(CMD_READ_CACHE_MISS);
        cache_miss = read_data_o();
        write_cmd(CMD_NOP);
    }

    void get_cycles_report(uint32_t i, uint32_t& fetch_ccs, uint32_t& exe1_ccs, uint32_t& exe2_ccs)
    {
        write_data_in(i);
        write_cmd(CMD_READ_FETCH_CLOCK);
        fetch_ccs = read_data_o();
        write_cmd(CMD_NOP);
        write_cmd(CMD_READ_EXE1_CLOCK);
        exe1_ccs = read_data_o();
        write_cmd(CMD_NOP);
        write_cmd(CMD_READ_EXE2_CLOCK);
        exe2_ccs = read_data_o();
        write_cmd(CMD_NOP);
    }

    void get_stalls_report(uint32_t i, uint32_t& fetch_stalls, uint32_t& exe1_stalls, uint32_t& exe2_stalls)
    {
        write_data_in(i);
        write_cmd(CMD_READ_FETCH_STALLS);
        fetch_stalls = read_data_o();
        write_cmd(CMD_NOP);
        write_cmd(CMD_READ_EXE1_STALLS);
        exe1_stalls = read_data_o();
        write_cmd(CMD_NOP);
        write_cmd(CMD_READ_EXE2_STALLS);
        exe2_stalls = read_data_o();
        write_cmd(CMD_NOP);
    }

    void get_elapsed_clock_cycles_report(uint32_t& elapsed_ccs)
    {
        write_cmd(CMD_READ_ELAPSED_CLOCK);
        elapsed_ccs = read_data_o();
        write_cmd(CMD_NOP);
    }

};