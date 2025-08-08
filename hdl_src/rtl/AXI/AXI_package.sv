//contains signals used to interface regex_coprocessor
//and software.
package AXI_package;
localparam REG_WIDTH                = 32;
parameter  CMD_NOP                  = 'h0000_0000 ;
parameter  CMD_WRITE                = 'h0000_0001 ;
parameter  CMD_READ                 = 'h0000_0002 ;
parameter  CMD_START                = 'h0000_0003 ;
parameter  CMD_RESET                = 'h0000_0004 ;
parameter  CMD_READ_ELAPSED_CLOCK   = 'h0000_0005 ;
parameter  CMD_RESTART              = 'h0000_0006 ;
parameter  CMD_READ_FIFO_COUNT      = 'h0000_0007 ;
parameter  CMD_READ_CACHE_HITS      = 'h0000_0008 ;
parameter  CMD_READ_CACHE_MISS      = 'h0000_0009 ;
parameter  CMD_READ_FETCH_CLOCK     = 'h0000_000A ;
parameter  CMD_READ_EXE1_CLOCK      = 'h0000_000B ;
parameter  CMD_READ_EXE2_CLOCK      = 'h0000_000C ;
parameter  CMD_READ_FETCH_STALLS    = 'h0000_000D ;
parameter  CMD_READ_EXE1_STALLS     = 'h0000_000E ;
parameter  CMD_READ_EXE2_STALLS     = 'h0000_000F ;
parameter  CMD_READ_FIFO_FULLS      = 'h0000_0010 ;
parameter  CMD_RESET_PERF_CNTRS     = 'h0000_0011 ;
parameter  CMD_SET_ADDRESS          = 'h0000_0012 ;
parameter  CMD_SET_LEN              = 'h0000_0013 ;
parameter  CMD_START_FETCH          = 'h0000_0014 ;


parameter  STATUS_IDLE              = 'h0000_0000 ;
parameter  STATUS_RUNNING           = 'h0000_0001 ;
parameter  STATUS_ACCEPTED          = 'h0000_0002 ;
parameter  STATUS_REJECTED          = 'h0000_0003 ;
parameter  STATUS_ERROR             = 'h0000_0004 ;
parameter  STATUS_FETCHING          = 'h0000_0005 ;

parameter STATUS_WAIT_RVALID        = 'h0000_0000 ;
parameter STATUS_CAPTURE_DATA       = 'h0000_0001 ;
parameter STATUS_CHECK_LAST         = 'h0000_0002 ;


parameter  DATA_IN_CHANNEL          = 'h0000_0000 ;
parameter  ADDR_CHANNEL             = 'h0000_0001 ;
parameter  START_CC_CHANNEL         = 'h0000_0002 ;
parameter  END_CC_CHANNEL           = 'h0000_0003 ;
parameter  CMD_CHANNEL              = 'h0000_0004 ;
endpackage : AXI_package