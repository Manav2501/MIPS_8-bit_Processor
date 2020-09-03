`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:05:00 08/19/2017
// Design Name:   RB_Block
// Module Name:   D:/Study/SEM_3/CO/verilog/Processor/RB_Block_tb.v
// Project Name:  Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RB_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RB_Block_tb;

	// Inputs
	reg [23:0] ins;
	reg [7:0] ans_ex;
	reg [7:0] ans_dm;
	reg [7:0] ans_wb;
	reg [7:0] imm;
	reg [4:0] RW_dm;
	reg [1:0] mux_sel_A;
	reg [1:0] mux_sel_B;
	reg imm_sel;
	reg clk;

	// Outputs
	wire [7:0] A;
	wire [7:0] B;

	// Instantiate the Unit Under Test (UUT)
	RB_Block uut (
		.A(A), 
		.B(B), 
		.ins(ins), 
		.ans_ex(ans_ex), 
		.ans_dm(ans_dm), 
		.ans_wb(ans_wb), 
		.imm(imm), 
		.RW_dm(RW_dm), 
		.mux_sel_A(mux_sel_A), 
		.mux_sel_B(mux_sel_B), 
		.imm_sel(imm_sel), 
		.clk(clk)
	);
	
always
	begin
		#500 clk = ~clk;
	end


	initial begin
		// Initialize Inputs
		ins = 24'H014C50;
		ans_ex = 8'HC0;
		ans_dm = 8'HD0;
		ans_wb = 8'HE0;
		imm = 8'HFF;
		RW_dm = 5'b00111;
		clk = 0;
		mux_sel_A = 2'b00;
		mux_sel_B = 2'b00;
		imm_sel = 1'b1;


		
		#1000;
		ins = 24'H014E50;
      mux_sel_B = 2'b01;
		imm_sel = 1'b0; 
		
		#1000;		
		mux_sel_B = 2'b10;
		mux_sel_A = 2'b11;

	end
      
endmodule

