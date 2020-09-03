`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:48:14 08/31/2017
// Design Name:   WB_Block
// Module Name:   D:/Study/SEM_3/CO/verilog/Processor/WB_Block_tb.v
// Project Name:  Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: WB_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module WB_Block_tb;

	// Inputs
	reg [7:0] ans_dm;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] ans_wb;

	// Instantiate the Unit Under Test (UUT)
	WB_Block uut (
		.ans_wb(ans_wb), 
		.ans_dm(ans_dm), 
		.clk(clk), 
		.reset(reset)
	);

always
begin
	#500 clk = ~clk;
end

	initial begin
		// Initialize Inputs
		ans_dm = 0;
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#200;
		ans_dm = 0;
		reset = 0;
		#600;
		reset = 1;
		#200;
		ans_dm = 8'Hf0;
		#1000;
		ans_dm = 8'H0f;
        
		// Add stimulus here

	end
      
endmodule

