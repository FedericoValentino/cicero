
`timescale 1 ns / 1 ps

	module cicero_core#
	(
	    parameter DATA_W = 32,
		parameter ADDR_W = 32,
		parameter ID_W   = 4
	)
	(
		input  logic clk,
		input  logic rst,

		taxi_axi_if.wr_slv wr_if,
		taxi_axi_if.rd_slv rd_if
	);
		// Write burst state
		logic [ADDR_W-1:0] wr_addr;
		logic [7:0]        wr_len;
		logic [2:0]        wr_size;
		logic [ID_W-1:0]   wr_id;
		logic              wr_in_progress;
		//BURST WRITE ADDR
		logic [ADDR_W-1:0] addr 

		// Read burst state
		logic [ADDR_W-1:0] rd_addr;
		logic [7:0]        rd_len;
		logic [2:0]        rd_size;
		logic [ID_W-1:0]   rd_id;
		logic              rd_in_progress;

		

		// ---------------------------------
		// Write Address Channel
		// ---------------------------------
		always_ff @(posedge clk) begin
			if (rst) begin
				wr_if.awready <= 1'b0;
				wr_in_progress <= 1'b0;
			end else begin
				wr_if.awready <= !wr_in_progress;

				if (wr_if.awvalid && wr_if.awready) begin
					wr_addr         <= wr_if.awaddr;
					wr_len          <= wr_if.awlen;
					wr_size         <= wr_if.awsize;
					wr_id           <= wr_if.awid;
					wr_in_progress  <= 1'b1;
				end
			end
		end

		// ---------------------------------
		// Write Data Channel
		// ---------------------------------
		logic [7:0] wr_count;

		always_ff @(posedge clk) begin
			if (rst) begin
				wr_if.wready <= 1'b0;
				wr_count <= 0;
			end else begin
				wr_if.wready <= wr_in_progress;

				if (wr_if.wvalid && wr_if.wready) begin
					// Simple INCR burst only
					addr = wr_addr + (wr_count << wr_size);
					data_in <= wr_if.wdata;

					wr_count <= wr_count + 1;

					if (wr_if.wlast) begin
						wr_if.bvalid <= 1'b1;
						wr_if.bid    <= wr_id;
						wr_if.bresp  <= 2'b00;
						wr_in_progress <= 1'b0;
						wr_count <= 0;
					end
				end
			end
		end

		// ---------------------------------
		// Write Response Channel
		// ---------------------------------
		always_ff @(posedge clk) begin
			if (rst) begin
				wr_if.bvalid <= 1'b0;
			end else if (wr_if.bvalid && wr_if.bready) begin
				wr_if.bvalid <= 1'b0;
			end
		end

		// ---------------------------------
		// Read Address Channel
		// ---------------------------------
		always_ff @(posedge clk) begin
			if (rst) begin
				rd_if.arready <= 1'b0;
				rd_in_progress <= 1'b0;
			end else begin
				rd_if.arready <= !rd_in_progress;

				if (rd_if.arvalid && rd_if.arready) begin
					rd_addr         <= rd_if.araddr;
					rd_len          <= rd_if.arlen;
					rd_size         <= rd_if.arsize;
					rd_id           <= rd_if.arid;
					rd_in_progress  <= 1'b1;
				end
			end
		end

		// ---------------------------------
		// Read Data Channel
		// ---------------------------------
		logic [7:0] rd_count;

		always_ff @(posedge clk) begin
			if (rst) begin
				rd_if.rvalid <= 1'b0;
				rd_count <= 0;
			end else begin
				if (rd_in_progress && (!rd_if.rvalid || (rd_if.rvalid && rd_if.rready))) begin
					// Provide data
					logic [ADDR_W-1:0] addr = rd_addr + (rd_count << rd_size);
					rd_if.rdata  <= mem[addr[9:2]];
					rd_if.rid    <= rd_id;
					rd_if.rresp  <= 2'b00;
					rd_if.rlast  <= (rd_count == rd_len);
					rd_if.rvalid <= 1'b1;

					if (rd_count == rd_len) begin
						rd_in_progress <= 1'b0;
						rd_count <= 0;
					end else begin
						rd_count <= rd_count + 1;
					end
				end

				if (rd_if.rvalid && rd_if.rready && rd_if.rlast) begin
					rd_if.rvalid <= 1'b0;
				end
			end
		end


		AXI_top UIP (
		.               clk			(AXI_CLK),
		.             	rst			(reset), //reset has to be implemented using cmd_register?
		.  data_in_register			(data_in),
		.  address_register			(addr),
		. start_cc_pointer_register	(slv_reg2),
		.   end_cc_pointer_register (slv_reg3),
		.      cmd_register			(cmd_reg),
		.   status_register			(status_reg),
		.   data_o_register			(data_o_reg)
		);
	// User logic ends

	endmodule
