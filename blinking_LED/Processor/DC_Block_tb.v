`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:21:31 09/22/2017
// Design Name:   DC_Block
// Module Name:   D:/Study/SEM_3/CO/verilog/Processor/DC_Block_tb.v
// Project Name:  Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DC_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DC_Block_tb;

	// Inputs
	reg [23:0] ins;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] imm;
	wire [4:0] RW_dm;
	wire [4:0] op_dec;
	wire [1:0] mux_sel_A;
	wire [1:0] mux_sel_B;
	wire imm_sel;
	wire mem_en_ex;
	wire mem_rw_ex;
	wire mem_mux_sel_dm;

	// Instantiate the Unit Under Test (UUT)
	DC_Block uut (
		.imm(imm), 
		.RW_dm(RW_dm), 
		.op_dec(op_dec), 
		.mux_sel_A(mux_sel_A), 
		.mux_sel_B(mux_sel_B), 
		.imm_sel(imm_sel), 
		.mem_en_ex(mem_en_ex), 
		.mem_rw_ex(mem_rw_ex), 
		.mem_mux_sel_dm(mem_mux_sel_dm), 
		.ins(ins), 
		.clk(clk), 
		.reset(reset)
	);
	
	always
	begin
		#500 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		ins = 24'b00000_00000_00000_00000_0000;
		clk = 1'b0;
		reset = 1'b1;
		
		#200;
		reset = 1'b0;
		
		#600;
		reset = 1'b1;
		
		#100;
		ins = 24'b00000_00001_00010_00011_0000;
		
		#1000;
		ins = 24'b10100_00100_00001_00000_0000;
		
		#2000;
		ins = 24'b00100_00101_00001_00100_0000;
		
		#1000;
		ins = 24'b01101_00110_00001_00000101_0;
	     
		// Add stimulus here

	end
      
endmodule

