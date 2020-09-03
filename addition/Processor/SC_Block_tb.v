`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:13:59 08/31/2017
// Design Name:   SC_Block
// Module Name:   D:/Study/SEM_3/CO/verilog/Processor/SC_Block_tb.v
// Project Name:  Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SC_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SC_Block_tb;

	// Inputs
	reg [23:0] ins;
	reg clk;
	reg reset;

	// Outputs
	wire Stall;
	wire Stall_pm;

	// Instantiate the Unit Under Test (UUT)
	SC_Block uut (
		.Stall(Stall), 
		.Stall_pm(Stall_pm), 
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
		ins = 0;
		clk = 0;
		reset = 1;
		#200;
		reset = 0;
		#600;
		reset = 1;
		#800;
		ins = 24'Ha00000;
		#2000;
		ins = 24'H000000;
		#1000;
		ins = 24'Hf00000;
		#3000;
		ins = 24'H000000;
		#1000;
		ins = 24'H880000;
       
		 
		 
	end
      
endmodule

