`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:49:30 10/25/2017
// Design Name:   Main_Block
// Module Name:   D:/Study/SEM_3/CO/verilog/Processor/Main_Block_tb.v
// Project Name:  Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Main_Block_tb;

	// Inputs
	reg [7:0] data_in;
	reg clk;
	reg interrupt;
	reg reset;

	// Outputs
	wire [7:0] data_out;
	wire [23:0] ins;
	wire [7:0] A;
	wire [7:0] B;
	wire [7:0] Current_Address;
	wire [7:0] ans_ex;
	wire [7:0] ans_dm;
	wire [7:0] ans_wb;
	wire [1:0] mux_sel_A;
	wire [1:0] mux_sel_B;
	wire imm_sel;

	// Instantiate the Unit Under Test (UUT)
	Main_Block uut (
		.data_out(data_out), 
		.ins(ins), 
		.A(A), 
		.B(B), 
		.Current_Address(Current_Address), 
		.ans_ex(ans_ex), 
		.ans_dm(ans_dm), 
		.ans_wb(ans_wb), 
		.mux_sel_A(mux_sel_A), 
		.mux_sel_B(mux_sel_B), 
		.imm_sel(imm_sel), 
		.data_in(data_in), 
		.clk(clk), 
		.interrupt(interrupt), 
		.reset(reset)
	);
	always
	begin
		#500 clk = ~clk;
	end
	
	initial begin
		data_in = 0;
		interrupt = 0;
		clk = 0;
		reset = 1;
		#200; reset = 0;
		#500; reset = 1;
	end

      
endmodule

