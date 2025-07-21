#include "re2_driver.hpp"
#include <iostream>

#include <fcntl.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <unistd.h>
#include <cstdio>
#include <cstdlib>
#include <cstdint>

#define CICERO_BASE_ADDR 0xA0000000  // Replace with actual physical base address
#define MAP_SIZE 0x100



static void ensure_bitstream_loaded(uint32_t ip_count)
{
    char argv1[] = "/usr/local/share/pynq-venv/bin/python3";
    char argv2[] = "-c";
    char argv3[] = "from pynq import Overlay, Clocks; Overlay('../../bitstreams/NEW 8x1.bit'); Clocks.fclk0_mhz = 300;";
    char *argv[] = {argv1, argv2, argv3, NULL};
    close(0);
    close(1);
    execvp(argv[0], argv);
}

void load_bitstream(uint32_t ip_count)
{
    pid_t pid = fork();
    if (!pid) {
        ensure_bitstream_loaded(ip_count);
        return;
    }
    waitpid(pid, NULL, 0);
}

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



int main()
{
    load_bitstream(1);

    void* base_ptr = open_device();

    re2_driver cicero(base_ptr);

    std::cout<<"Current Command: "<<cicero.read_cmd()<<std::endl;

    cicero.write_cmd(re2_driver::CMD_NOP);

    std::cout<<"Current Command: "<<cicero.read_cmd()<<std::endl;

    cicero.write_cmd(re2_driver::CMD_WRITE);

    std::cout<<"Current Command: "<<cicero.read_cmd()<<std::endl;

    cicero.write_cmd(re2_driver::CMD_NOP);

    std::cout<<"Current Command: "<<cicero.read_cmd()<<std::endl;

    return 0;
}