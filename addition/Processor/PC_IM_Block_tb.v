`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:07:13 08/17/2017
// Design Name:   PC_IM_Block
// Module Name:   D:/Study/SEM_3/CO/verilog/Processor/PC_IM_Block_tb.v
// Project Name:  Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC_IM_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_IM_Block_tb;

	// Inputs
	reg [7:0] jmp_loc;
	reg pc_mux_sel;
	reg Stall;
	reg Stall_pm;
	reg reset;
	reg clk;

	// Outputs
	wire [23:0] ins;
	wire [7:0] Current_Address;

	// Instantiate the Unit Under Test (UUT)
	PC_IM_Block uut (
		.ins(ins), 
		.Current_Address(Current_Address), 
		.jmp_loc(jmp_loc), 
		.pc_mux_sel(pc_mux_sel), 
		.Stall(Stall), 
		.Stall_pm(Stall_pm), 
		.reset(reset), 
		.clk(clk)
	);

	always
	begin
		#500 clk = ~clk;
	end
	
	
	initial begin
		// Initialize Inputs
		jmp_loc = 8'H08;
		pc_mux_sel = 1'b1;
		Stall = 1'b0;
		Stall_pm = 1'b0;
		reset = 1'b1;
		clk = 1'b0;
		
		
		
		#200;
		reset = 1'b0;
		
		#600;
		reset = 1'b1;
		pc_mux_sel = 1'b0;
		
		#3200;
		Stall = 1'b1;
		
		#1000;
		Stall_pm = 1'b1;
		Stall = 1'b0;
		
		#1000;
		Stall_pm = 1'b0;
		pc_mux_sel = 1'b1;		

	end
      
endmodule

