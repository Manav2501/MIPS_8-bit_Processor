`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:20 08/31/2017 
// Design Name: 
// Module Name:    WB_Block 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module WB_Block(ans_wb, ans_dm, clk, reset);

// Inputs
input [7:0] ans_dm;
input clk,reset;

// Outputs
output [7:0] ans_wb;

// Temp variables
wire [7:0] ans_wb_tmp;
reg [7:0] ans_wb_tmp2;

// assign ans_wb_tmp by reset
assign ans_wb_tmp = (reset == 1'b0) ? 8'H00 : ans_dm;

// reg. block
always@(posedge clk)
begin
	ans_wb_tmp2 <= ans_wb_tmp;
end 

// assign logic for ans_wb
assign ans_wb = ans_wb_tmp2;


endmodule
