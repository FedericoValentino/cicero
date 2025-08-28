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

uint32_t start_cicero(re2_driver& cicero, char* argv[])
{
    //Reset cicero
    cicero.write_cmd(re2_driver::CMD_RESTART);

    //Insert data
    FILE *program = fopen(argv[1], "r");

    uint32_t code_end_addr = read_program(program, cicero);

    uint32_t string_end_addr = read_string(argv[2], code_end_addr, cicero);

    if(cicero.fast_transfer)
    {
        uint32_t len = string_end_addr/4;

        printf("Length of code+string: 0x%08x\n", len);

        cicero.start_AXI_M_transfer(len);
    }
    

    cicero.verify_code();

    cicero.verify_string();
    
    //send start signal
    cicero.start(code_end_addr, string_end_addr);


    return cicero.wait_complete();
}


int main(int argc, char* argv[])
{

    if(argc != 4)
    {
        std::cout<<"Usage: ./re2_driver_xrt <regex_code> <string> <fast_transfer: [1|0]>"<<std::endl;
    }

    void* base_ptr_lite = open_device_axi_lite();

    void* base_ptr_full = open_device_axi_full();

    int fast_transfer = atoi(argv[3]);

    re2_driver cicero(base_ptr_lite, base_ptr_full, fast_transfer);

    cicero.test_write_capabilities();  

    uint32_t status = start_cicero(cicero, argv);

    std::cout<<"String accepted? "<<status<<std::endl;

    cicero.read_performance_counters();

    cicero.write_cmd(re2_driver::CMD_RESET);

    cicero.write_cmd(re2_driver::CMD_NOP);
    
    return 0;
}