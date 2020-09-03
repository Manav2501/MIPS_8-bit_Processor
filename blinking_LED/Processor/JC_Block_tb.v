`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:30:30 09/19/2017
// Design Name:   JC_Block
// Module Name:   D:/Study/SEM_3/CO/verilog/Processor/JC_Block_tb.v
// Project Name:  Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JC_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JC_Block_tb;

	// Inputs
	reg [23:0] ins;
	reg [7:0] Current_Address;
	reg [3:0] flag_ex;
	reg interrupt;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] jmp_loc;
	wire pc_mux_sel;

	// Instantiate the Unit Under Test (UUT)
	JC_Block uut (
		.jmp_loc(jmp_loc), 
		.pc_mux_sel(pc_mux_sel), 
		.ins(ins), 
		.Current_Address(Current_Address), 
		.flag_ex(flag_ex), 
		.interrupt(interrupt), 
		.clk(clk), 
		.reset(reset)
	);
always 
		begin
			#500 clk = ~clk;
		end
		
	
	initial begin
		// Initialize Inputs
		ins = 24'h000000;
		Current_Address = 8'h01;
		flag_ex = 4'hf;
		interrupt = 1'b0;
		clk = 1'b0;
		reset = 1'b1;
	
		#200
		reset = 1'b0;
		
		#600
		reset = 1'b1;
		
		#800
		interrupt = 1'b1;
		
		#1000
		ins = 24'h000008;
		interrupt = 1'b0;
		
		#1000
		ins = 24'hc00008;
		
		#2000
		ins = 24'h800008;
		flag_ex = 4'h00;
		
		#1000
		ins = 24'hf00008;
		
		
	
	end      
endmodule

