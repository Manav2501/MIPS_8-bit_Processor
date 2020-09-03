`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:48 08/17/2017 
// Design Name: 
// Module Name:    PC_IM_Block 
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
module PC_IM_Block(ins,Current_Address,jmp_loc,pc_mux_sel,Stall,Stall_pm,reset,clk);

// Inputs
input [7:0] jmp_loc;
input pc_mux_sel, Stall, Stall_pm, reset, clk;


// Outputs
output wire [23:0] ins;
output [7:0] Current_Address;

// Temp. Variables
wire [23:0] ins_pm, PM_out;
wire [7:0] CAJ, CAR, IA, IA_tmp, Curr_tmp;

reg [7:0] Hold_Address, Next_Address ;
reg [23:0] ins_prv;


// Program Memory Block
Program_Memory pm (
  .clka(clk), 					// input clka
  .addra(Current_Address), // input [7 : 0] addra
  .douta(PM_out) 				// output [23 : 0] douta
);

// Current Address by default increment by one
assign IA = Current_Address + 8'H01;

// To get the value of current address
assign CAJ = Stall == 1'b0 ? Next_Address : Hold_Address;
assign CAR = pc_mux_sel == 1'b0 ? CAJ : jmp_loc;
assign Current_Address = reset == 1'b0 ? 8'b00000000 : CAR;

// Temp variables controlled by reset
assign IA_tmp = reset == 1'b1 ? IA : 8'b00000000;
assign Curr_tmp = reset == 1'b1 ? Current_Address:8'b00000000;

always@(posedge clk)
begin
	Next_Address <= IA_tmp;
	Hold_Address <= Curr_tmp;
end


// To get Instruction 
assign ins_pm = Stall_pm == 1'b1 ? ins_prv : PM_out;
assign ins = reset == 1'b0 ? 24'h000000 : ins_pm;

always@(posedge clk)
begin
	ins_prv <= ins;
end

endmodule
