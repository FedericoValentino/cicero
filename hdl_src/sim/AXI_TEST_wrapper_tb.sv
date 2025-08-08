`timescale 1ns / 1ps

import axi_vip_pkg::*;
import AXI_TEST_axi_vip_0_0_pkg::*;
import AXI_TEST_axi_vip_1_0_pkg::*;

import AXI_package::*;
import instruction_package::*;

bit aclk = 0, aresetn = 0;

xil_axi_resp_t 	resp;
bit[31:0]  addr, data, base_addr = 32'h4400_0000, switch_state;

module AXI_TEST_wrapper_tb();

AXI_TEST_wrapper UUT
(
    .clk                (aclk),
    .reset              (aresetn)
);

always #5ns aclk = ~aclk;

initial begin
    //Assert the reset
    aresetn = 0;
    #340ns
    // Release the reset
    aresetn = 1;
end

AXI_TEST_axi_vip_0_0_mst_t          master_agent;
AXI_TEST_axi_vip_1_0_slv_mem_t      slave_agent;

task write(input logic [32-1:0] data_in, input logic [32-1:0] addr_in);
begin
    addr = addr_in;
    data = data_in;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
end
endtask

task read(input logic [32-1:0] addr);
  begin
  
    master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    $display("%h", data);
    
  end
  endtask

initial begin
    slave_agent = new("slave vip agent", UUT.AXI_TEST_i.axi_vip_1.inst.IF);
    slave_agent.set_verbosity(400);
    slave_agent.start_slave();

    // Create master agent
    master_agent = new("master vip agent", UUT.AXI_TEST_i.axi_vip_0.inst.IF);
    master_agent.start_master();

    wait (aresetn == 1'b1);

    #500ns
    write(CMD_RESET, 32'h4*4); //RESET CICERO
    @(posedge aclk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge aclk);
    write(32'b0, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_WRITE, 32'h4*4); //CMD_WRITE
    @(posedge aclk);
    write(32'hDEADBEEF, 32'h0*4); //WRITE_DATA
    @(posedge aclk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge aclk);
    write(32'h0, 32'h0*4); //CLEAR WRITE REG
    @(posedge aclk);
    
    
    //WILL READ 10 WORDS FROM ADDRESS 0
    write(32'b0, 32'h0*4); //WRITE RADDR
    @(posedge aclk);
    write(CMD_SET_ADDRESS, 32'h4*4); //SET RADDR
    @(posedge aclk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge aclk);
    write(32'h10, 32'h0*4); //WRITE RLEN
    @(posedge aclk);
    write(CMD_SET_LEN, 32'h4*4); //SET RLEN
    @(posedge aclk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge aclk);
    write(CMD_START_FETCH, 32'h4*4); //START FETCH PROCESS
    @(posedge aclk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge aclk);

    #500ns
    write(32'd0, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);
    
    write(32'd1, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);
    
    write(32'd2, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);
    
    write(32'd3, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);
    
    write(32'd4, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);
    
    write(32'd5, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);
    
    write(32'd6, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);
    
    write(32'd7, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);
    
    write(32'd8, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);
    
    write(32'd9, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);
    
    write(32'd10, 32'h1*4); //WRITE ADDRESS
    @(posedge aclk);
    write(CMD_READ, 32'h4*4);
    @(posedge aclk);
    read(32'h6*4);
    @(posedge aclk);

    
    #500ns
    $finish;
end

endmodule
