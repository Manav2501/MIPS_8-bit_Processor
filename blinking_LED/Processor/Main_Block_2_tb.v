`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:01:49 11/03/2017
// Design Name:   Main_Block
// Module Name:   C:/Users/student/Desktop/Processor/Main_Block_2_tb.v
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

module Main_Block_2_tb;

	// Inputs
	reg [7:0] data_in;
	reg clk;
	reg interrupt;
	reg reset;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Main_Block uut (
		.data_out(data_out), 
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

