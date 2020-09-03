`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:02 08/31/2017 
// Design Name: 
// Module Name:    SC_Block 
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
module SC_Block(Stall, Stall_pm, ins, clk, reset);

// Inputs
input [23:0] ins;
input clk, reset;

// Outputs
output Stall, Stall_pm;

// Temp variables
wire HLT, ld, JUMP, Q1, Q2, Q3, Q4;

// assign logic for Hold, Load, Jump
assign HLT = ((ins[19]) & (~ins[20]) & (~ins[21]) & (~ins[22]) & (ins[23]));
assign ld = ((~ins[19]) & (~ins[20]) & (ins[21]) & (~ins[22]) & (ins[23]) & (~Q1));
assign JUMP = ((ins[21]) & (ins[22]) & (ins[23]) & (~Q4));

// assign logic for D-flipflop
D_FF d1(Q1,    ld, clk, reset);
D_FF d2(Q2, Stall, clk, reset);
D_FF d3(Q3,  JUMP, clk, reset);
D_FF d4(Q4,    Q3, clk, reset);

// assign logic for Stall
assign Stall = (HLT | ld | JUMP);

// assign logic for Stall_pm
assign Stall_pm = Q2;

endmodule
/////////////////////////////////D_FlipFlop Module////////////////////////////////
module D_FF(Q, D, clk, reset);
input clk, D, reset;
output Q;
reg Q_tmp;
wire D_tmp;

assign D_tmp = (reset == 1'b0) ? 1'b0 : D;

always @(posedge clk)
	begin
			Q_tmp <= D_tmp;
	end
assign Q = Q_tmp;	
endmodule
