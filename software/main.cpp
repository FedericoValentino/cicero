#include "re2_driver.hpp"
#include <iostream>

#include <fcntl.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <unistd.h>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <cstring>

#define CICERO_BASE_ADDR 0xA0000000  // Replace with actual physical base address
#define MAP_SIZE 0x1000

void* open_device() {
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        perror("Error opening /dev/mem");
        exit(1);
    }

    void* base_ptr = mmap(NULL, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, CICERO_BASE_ADDR);
    if (base_ptr == MAP_FAILED) {
        perror("Error mapping memory");
        exit(1);
    }

    close(fd);
    return base_ptr;
}

void* open_device_mock() {
    void* mock_base = malloc(MAP_SIZE);
    if (!mock_base) {
        perror("Failed to allocate mock device memory");
        exit(1);
    }
    memset(mock_base, 0, MAP_SIZE); // optional: initialize
    return mock_base;
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

uint32_t read_string(char string[], uint32_t addr, re2_driver& driver)
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


int main(int argc, char* argv[])
{

    if(argc != 3)
    {
        std::cout<<"Usage: ./re2_driver_xrt <regex_code> <string>"<<std::endl;
    }

    void* base_ptr = open_device();

    re2_driver cicero(base_ptr);

    //Reset cicero
    cicero.write_cmd(re2_driver::CMD_RESTART);

    //Insert data
    FILE *program = fopen(argv[1], "r");

    uint32_t code_end_addr = read_program(program, cicero);

    uint32_t string_end_addr = read_string(argv[2], code_end_addr, cicero);

    cicero.verify_code();

    cicero.verify_string();
    
    //send start signal
    cicero.start(code_end_addr, string_end_addr);


    uint32_t status = cicero.wait_complete();

    std::cout<<"String accepted? "<<status<<std::endl;

    cicero.write_cmd(re2_driver::CMD_RESET);

    cicero.read_performance_counters();

    return 0;
}