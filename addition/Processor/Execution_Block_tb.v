`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:51:15 08/17/2017
// Design Name:   Execution_Block
// Module Name:   D:/Study/SEM_3/CO/verilog/Processor/Execution_Block_tb.v
// Project Name:  Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Execution_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Execution_Block_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg [7:0] data_in;
	reg [4:0] op_dec;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] ans_ex;
	wire [7:0] DM_data;
	wire [7:0] data_out;
	wire [3:0] flag_ex;

	// Instantiate the Unit Under Test (UUT)
	Execution_Block uut (
		.ans_ex(ans_ex), 
		.DM_data(DM_data), 
		.data_out(data_out), 
		.flag_ex(flag_ex), 
		.A(A), 
		.B(B), 
		.data_in(data_in), 
		.op_dec(op_dec), 
		.clk(clk), 
		.reset(reset)
	);

always
	begin
		#500 clk = ~clk;
	end


	initial begin
		A = 8'H00;
		B = 8'H00;
		op_dec = 5'b00000;
		
		data_in = 8'H00;
		clk = 0;
		reset = 1'b1;
		#200;
		reset = 1'b0;
		#600;
		reset = 1'b1;
		#200;
		A = 8'H40;
		B = 8'HC0;
		data_in = 8'H08;
		
		
			
		#1000; op_dec = 5'b00001;
		#1000; op_dec = 5'b00010;
		#1000; op_dec = 5'b00100;
		#1000; op_dec = 5'b00101;
		#1000; op_dec = 5'b00110;
		#1000; op_dec = 5'b00111;
		#1000; op_dec = 5'b01000;
		#1000; op_dec = 5'b01001;
		#1000; op_dec = 5'b01010;
		#1000; op_dec = 5'b01100;
		#1000; op_dec = 5'b01101;
		#1000; op_dec = 5'b01110;
		#1000; op_dec = 5'b01111;
		#1000; op_dec = 5'b10000;
		#1000; op_dec = 5'b10001;
		#1000; op_dec = 5'b10100;
		#1000; op_dec = 5'b10101;
		#1000; op_dec = 5'b10110;
		#1000; op_dec = 5'b10111;
		#1000; op_dec = 5'b11000;
		
		A = 8'Hc0;
		B = 8'H01;
		data_in = 8'H08;
		
		#1000; op_dec = 5'b11001;
		#1000; op_dec = 5'b11010;
		#1000; op_dec = 5'b11011;
		#1000; op_dec = 5'b11100;
		#1000; op_dec = 5'b11101;
		#1000; op_dec = 5'b11110;
		#1000; op_dec = 5'b11111;
		
  	end
      
endmodule


