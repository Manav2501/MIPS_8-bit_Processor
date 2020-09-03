`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:28 09/08/2017 
// Design Name: 
// Module Name:    JC_Block 
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
module JC_Block(jmp_loc, pc_mux_sel, ins, Current_Address, flag_ex, interrupt, clk, reset);

// Inputs
input [23:0] ins;
input [7:0] Current_Address;
input [3:0] flag_ex;
input interrupt, clk, reset;

// Outputs
output wire [7:0] jmp_loc;
output wire pc_mux_sel;

// Temp Variables
wire JC, JNC, JZ, JNZ, JMP, Q1, Q2;
wire [3:0] tmp_flag,tmp_flag1, tmp_flag2, or_flag;
wire [7:0] inr_curr, tmp_reg_curr, tmp_reg_curr1, tmp_reg_curr2, tmp_mux;

reg [7:0] tmp_reg_curr3;
reg [3:0] tmp_flag3;

// Assign values to conditional flages
assign JC = ins[23] && ins[22] && ins[21] && (!ins[20]) && (!ins[19]);
assign JNC = ins[23] && ins[22] && ins[21] && (!ins[20]) && (ins[19]);
assign JZ = ins[23] && ins[22] && ins[21] && (ins[20]) && (!ins[19]);
assign JNZ = ins[23] && ins[22] && ins[21] && (ins[20]) && (ins[19]);
assign JMP = ins[23] && ins[22] && (!ins[21]) && (!ins[20]) && (!ins[19]);
assign RET = ins[23] && (!ins[22]) && (!ins[21]) && (!ins[20]) && (!ins[19]);

// Flip - flops modules
D_FF d1(Q1, interrupt, clk, reset);
D_FF d2(Q2,        Q1, clk, reset);

// To get pc_mux_sel
assign tmp_flag1 = Q2 == 1'b1 ? flag_ex : tmp_flag;
assign tmp_flag2 =  (reset == 1'b0) ? 4'b0000 : tmp_flag1;
always@ (posedge clk) 
begin
		tmp_flag3 <= tmp_flag2;
end
assign tmp_flag = tmp_flag3;
assign or_flag = RET == 1'b0 ? flag_ex : tmp_flag;
assign pc_mux_sel = (or_flag[0] && JC) || (!or_flag[0] && JNC) || (or_flag[1] && JZ) || (!or_flag[1] && JNZ) || JMP || RET || Q1; 


// To get jmp_loc
assign inr_curr = Current_Address + 8'h01;
assign tmp_reg_curr1 = interrupt == 1'b0 ? tmp_reg_curr : inr_curr;
assign tmp_reg_curr2 = (reset == 1'b0) ? 8'H00 : tmp_reg_curr1;
always @ ( posedge clk)
begin 
	tmp_reg_curr3 <= tmp_reg_curr2;
end
assign tmp_reg_curr = tmp_reg_curr3;
assign tmp_mux = (Q1 == 1'b0) ? ins[7:0] : 8'Hf0;
assign jmp_loc = RET == 1'b0 ? tmp_mux : tmp_reg_curr;

endmodule
/////////////////////////////////D_FlipFlop Module////////////////////////////////
/*module D_FF(Q, D, clk, reset);
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
*/