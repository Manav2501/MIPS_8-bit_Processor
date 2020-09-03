`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:45 09/29/2017 
// Design Name: 
// Module Name:    Main_Block 
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
module Main_Block(data_out, data_in, clk, interrupt, reset);


input [7:0] data_in;
input clk;
input interrupt; 
input reset;


output [7:0] data_out;
wire [7:0] ans_ex, ans_dm, ans_wb, A, B, Current_Address; 
wire [23:0] ins;
wire [1:0] mux_sel_A, mux_sel_B;
wire imm_sel;

wire [7:0] DM_data, imm, jmp_loc;
wire [3:0] flag_ex;
wire [4:0] op_dec, RW_dm;
wire pc_mux_sel, Stall, Stall_pm, mem_rw_ex, mem_en_ex, mem_mux_sel_dm;

Execution_Block EX(ans_ex, DM_data, data_out, flag_ex, A, B, data_in, op_dec, clk, reset);
PC_IM_Block PC_IM(ins, Current_Address, jmp_loc, pc_mux_sel, Stall, Stall_pm, reset, clk);
DM_Block DM(ans_dm, ans_ex, DM_data, mem_rw_ex, mem_en_ex, mem_mux_sel_dm, reset, clk);
JC_Block JC(jmp_loc, pc_mux_sel, ins, Current_Address, flag_ex, interrupt, clk, reset);
RB_Block RB(A, B, ins, ans_ex, ans_dm, ans_wb, imm, RW_dm, mux_sel_A, mux_sel_B, imm_sel, clk);
SC_Block SC(Stall, Stall_pm, ins, clk, reset);
WB_Block WB(ans_wb, ans_dm, clk, reset);
DC_Block DC(imm, RW_dm, op_dec, mux_sel_A, mux_sel_B, imm_sel, mem_en_ex, mem_rw_ex, mem_mux_sel_dm, ins, clk, reset);

endmodule
