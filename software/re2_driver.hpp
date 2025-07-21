#include "experimental/xrt_device.h"
#include "experimental/xrt_ip.h"


class re2_driver {
public:

    static constexpr int word_size_in_bytes = 4;
    static constexpr int window_size_in_chars = 32;

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
        write(ADDRESS, VAL);
    }

    uint32_t read_address()
    {
        return read(DATA_IN);
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

    /*----------LOADING CODE AND STRING----------*/

    uint32_t load_code(const std::vector<uint16_t>& code) 
    {
        std::vector<uint8_t> bytes;
        for (uint16_t word : code) {
            bytes.push_back(word & 0xFF);
            bytes.push_back((word >> 8) & 0xFF);
        }
        auto addr = write_bytes(bytes, 0);
        return ((addr + window_size_in_chars - 1) / window_size_in_chars) * window_size_in_chars;
    }

    uint32_t load_string(const std::vector<uint8_t>& str, uint32_t start_addr) 
    {
        uint32_t aligned = ((start_addr + window_size_in_chars - 1) / window_size_in_chars) * window_size_in_chars;
        return write_bytes(str, aligned);
    }

    /*----------STATUS CHANGING OPERATIONS----------*/


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

        for (size_t i = 0; i < bytes.size(); i += word_size_in_bytes) 
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
            addr += word_size_in_bytes;
        }

        write_cmd(CMD_NOP);
        return addr;
    }

};