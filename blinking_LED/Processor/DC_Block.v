`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:12 09/21/2017 
// Design Name: 
// Module Name:    DC_Block 
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
module DC_Block(imm, RW_dm, op_dec, mux_sel_A, mux_sel_B, imm_sel, mem_en_ex, mem_rw_ex, mem_mux_sel_dm, ins, clk, reset);

// Inputs
input [23:0] ins;
input clk, reset;

// Outputs
output [7:0] imm;
output [4:0] op_dec, RW_dm;
output [1:0] mux_sel_A, mux_sel_B;
output imm_sel, mem_en_ex, mem_rw_ex, mem_mux_sel_dm;

// Temp variables
wire JMP, Cond_j, LD1, Imm, LD2, ST ,NOR;
wire Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, comp1, comp2, comp3, comp4, comp5, comp6;
wire [18:0] tmp_ins,Bit_extender;
wire [4:0] R_out1, R_out2, R_out3, R_out4, R_out5, R_out6, R_out7;
wire [7:0] reg_imm_tmp;

reg [7:0] reg_imm;

// assign logic for conditional flages
assign JMP = ins[23] && ins[22] && (!ins[21]) && (!ins[20]) && (!ins[19]);
assign Cond_j = ins[23] && ins[22] && ins[21];
assign LD1 = ins[23] && (!ins[22]) && ins[21] && (!ins[20]) && (!ins[19]) && (!Q1);
assign Imm = (!ins[23]) && ins[22];
assign LD2 = ins[23] && (!ins[22]) && ins[21] && (!ins[20]) && (!ins[19]);
assign ST = ins[23] && (!ins[22]) && ins[21] && (!ins[20]) && ins[19];

// assign logic for imm
assign reg_imm_tmp = (reset == 1'b0) ? 1'b0 : ins[8:1];
always @(posedge clk)
	begin
			reg_imm <= reg_imm_tmp;
	end
assign imm = reg_imm;	

// Flip - flops modules
D_FF DFF1(Q1,                   LD1, clk, reset);
D_FF DFF2(Q2,                   Imm, clk, reset);
D_FF DFF3(Q3,               ins[19], clk, reset);
D_FF DFF4(Q4,        (LD2 && (!Q4)), clk, reset);
D_FF DFF5(Q5,                    ST, clk, reset);
D_FF DFF6(Q6,                    Q3, clk, reset);
D_FF DFF7(Q7, ((!Q3) && (Q4 || Q5)), clk, reset);
D_FF DFF8(Q8,            (Q4 || Q5), clk, reset);
D_FF DFF9(Q9,                    Q7, clk, reset);

// assign final logic for imm_sel,mem_rw_ex,mem_en_ex,mem_mux_sel_dm
assign imm_sel = Q2;
assign mem_rw_ex = Q6;
assign mem_en_ex = Q8;
assign mem_mux_sel_dm = Q9;

// assign logic for conditional flages
assign NOR = !(JMP | Cond_j | Q1);
assign Bit_extender = (NOR == 1'b1) ? 19'b11111_11111_11111_1111 : 19'b00000_00000_00000_0000;
assign tmp_ins = ins[18:0] & Bit_extender;

// Register Modules
Reg_5bit REG1(R_out1,     ins[23:19], clk, reset);
Reg_5bit REG2(R_out2,  tmp_ins[13:9], clk, reset);
Reg_5bit REG3(R_out3, tmp_ins[18:14], clk, reset);
Reg_5bit REG4(R_out4,         R_out3, clk, reset);
Reg_5bit REG5(R_out5,         R_out4, clk, reset);
Reg_5bit REG6(R_out6,         R_out5, clk, reset);
Reg_5bit REG7(R_out7,   tmp_ins[8:4], clk, reset);

// assign final logic for op_dec,RW_dm
assign op_dec = R_out1;	
assign RW_dm = R_out5;

// assign logic for comparetors
assign comp1 = (R_out4 == R_out2) ? 1'b1 : 1'b0;
assign comp2 = (R_out5 == R_out2) ? 1'b1 : 1'b0;
assign comp3 = (R_out6 == R_out2) ? 1'b1 : 1'b0;
assign comp4 = (R_out4 == R_out7) ? 1'b1 : 1'b0;
assign comp5 = (R_out5 == R_out7) ? 1'b1 : 1'b0;
assign comp6 = (R_out6 == R_out7) ? 1'b1 : 1'b0;

// assign final logic for mux_sel_A,mux_sel_B
assign mux_sel_A = (((!comp1) & (!comp2) & comp3) == 1'b1) ? 2'b11 : 
										(((!comp1) & comp2) == 1'b1) ? 2'b10 : 
									  					 (comp1 == 1'b1) ? 2'b01 : 2'b00;
assign mux_sel_B = (((!comp4) & (!comp5) & comp6) == 1'b1) ? 2'b11 : 
										(((!comp4) & comp5) == 1'b1) ? 2'b10 : 
														 (comp4 == 1'b1) ? 2'b01 : 2'b00;



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
endmodule*/
///////////////////////////////Register_5bit Module////////////////////////////////
module Reg_5bit(Out, In, clk, reset);
input clk, reset;
input [4:0] In;
output [4:0]Out;
wire [4:0] tmp1;
reg [4:0] tmp2;

assign tmp1 = (reset == 1'b0) ? 5'b00000 : In;

always @(posedge clk)
begin
	tmp2 <= tmp1;
end
assign Out = tmp2;
endmodule
