`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:25 08/18/2017 
// Design Name: 
// Module Name:    RB_Block 
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
module RB_Block(A, B, ins, ans_ex, ans_dm, ans_wb, imm, RW_dm, mux_sel_A, mux_sel_B, imm_sel, clk);

// Inputs
input [23:0] ins;
input [7:0] ans_ex, ans_dm, ans_wb, imm;
input [4:0] RW_dm;
input [1:0] mux_sel_A, mux_sel_B;
input imm_sel, clk;

// Outputs
output [7:0] A, B;

// Temp variables
wire [7:0] BI;
wire [4:0] op_add_A, op_add_B;

reg [7:0] mem[0:31];
reg [7:0] AR, BR;


// assign operands to Reg. Bank
assign op_add_A = ins[13:9];
assign op_add_B = ins[8:4];

// Reg. Bank Block
always@(posedge clk)
begin
	AR <= mem[op_add_A];
	BR <= mem[op_add_B];
	mem[RW_dm] <= ans_dm;
end

// assign operand A by mux_sel_A
assign A = mux_sel_A == 2'b00 ? AR : 
			  mux_sel_A == 2'b01 ? ans_ex :
			  mux_sel_A == 2'b10 ? ans_dm : ans_wb;


// assign operand BI by mux_sel_B
assign BI = mux_sel_B == 2'b00 ? BR : 
			  mux_sel_B == 2'b01 ? ans_ex :
			  mux_sel_B == 2'b10 ? ans_dm : ans_wb;

// assign operand B by imm_sel			  
assign B = imm_sel == 1'b0 ? BI : imm;


endmodule
