`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:19 08/17/2017 
// Design Name: 
// Module Name:    Execution_Block 
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
module Execution_Block(ans_ex,DM_data,data_out,flag_ex,A,B,data_in,op_dec,clk,reset);

// Inputs
input [7:0] A,B,data_in;
input [4:0] op_dec;
input clk,reset;


// Output
output reg [7:0] ans_ex,DM_data,data_out;
output [3:0] flag_ex;

// Temp. Variables
wire[7:0] data_out_buff;
wire [7:0] ans_tmp, add_tmp, tmp;
wire [7:0] arith_shift_ans;

wire [3:0]flag_temp;
reg [3:0] flag_reg;


add_sub_8bit fa (add_tmp, carry, overflow ,A ,B, op_dec[0]);

assign arith_shift_ans = (A[7] == 1'b1) ? B[2:0] == 3'b000 ? A :
								  B[2:0] == 3'b001 ? (A>>B[2:0] | 8'b10000000) :
								  B[2:0] == 3'b010 ? (A>>B[2:0] | 8'b11000000) :
								  B[2:0] == 3'b011 ? (A>>B[2:0] | 8'b11100000) :
								  B[2:0] == 3'b100 ? (A>>B[2:0] | 8'b11110000) :
								  B[2:0] == 3'b101 ? (A>>B[2:0] | 8'b11111000) :
								  B[2:0] == 3'b110 ? (A>>B[2:0] | 8'b11111100) :
								  (A>>B[2:0] | 8'b11111110) : A>>B[2:0];

assign ans_tmp =  op_dec == 5'b00000 || op_dec == 5'b00001 || op_dec == 5'b01000 || op_dec == 5'b01001 ? add_tmp : 
						op_dec == 5'b00010 || op_dec == 5'b01010 ? B :
						op_dec == 5'b00100 || op_dec == 5'b01100 ? A&B :
						op_dec == 5'b00101 || op_dec == 5'b01101 ? A|B :
						op_dec == 5'b00110 || op_dec == 5'b01110 ? A^B :
						op_dec == 5'b00111 || op_dec == 5'b01111 ? ~B :
						op_dec == 5'b10100 || op_dec == 5'b10101 ? A :
						op_dec == 5'b10110 ? data_in :
						op_dec == 5'b11001 ? A<<B : 
						op_dec == 5'b11010 ? A>>B :
						op_dec == 5'b11011 ? arith_shift_ans :
						op_dec == 5'b10000|| op_dec == 5'b10111 || 
						op_dec == 5'b10001|| op_dec == 5'b11000 ||
						op_dec == 5'b11100|| op_dec == 5'b11101 ||
						op_dec == 5'b11110|| op_dec == 5'b11111 ?  ans_ex : 8'H00;
						
						
assign parity = ans_tmp[0]^ans_tmp[1]^ans_tmp[2]^ans_tmp[3]^ans_tmp[4]^ans_tmp[5]^ans_tmp[6]^ans_tmp[7];
assign zero = (ans_tmp == 8'b00000000) ? 1'b1 : 1'b0 ;

/*
assign flag_ex = op_dec == 5'b00000 || op_dec == 5'b00001 ||op_dec == 5'b01000 ||op_dec == 5'b01001 ? {parity,overflow,zero,carry} :
					  op_dec == 5'b00010 || op_dec == 5'b00100 ||op_dec == 5'b00101 ||op_dec == 5'b00110 || op_dec == 5'b00111 || op_dec == 5'b01010 ||op_dec == 5'b01100 ||op_dec == 5'b01101 || op_dec == 5'b01110 || op_dec == 5'b01111 ||op_dec == 5'b10110 ||op_dec == 5'b11001 || op_dec == 5'b11010 || op_dec == 5'b11011 ? {parity,1'b0,zero,1'b0} : 4'b0000
					  ;
*/
assign flag_temp = (op_dec==5'b00010||op_dec==5'b00100||op_dec==5'b00101||op_dec==5'b00110||op_dec==5'b00111||op_dec==5'b01010||op_dec==5'b01100||op_dec==5'b01101||op_dec==5'b01110||op_dec==5'b01111||op_dec==5'b10110||op_dec==5'b11001||op_dec==5'b11010||op_dec==5'b11011)?{parity,1'b0,zero,1'b0}:((op_dec==5'b10000||op_dec==5'b10001||op_dec==5'b10100||op_dec==5'b10101||op_dec==5'b10111||op_dec==5'b11000)?{1'b0,1'b0,1'b0,1'b0}:{parity,overflow,zero,carry});
assign flag_ex = (op_dec[4:2]==3'b111)?flag_reg:flag_temp;

assign tmp = (reset==1'b0)? 8'H00: data_out_buff;
assign data_out_buff=(op_dec == 5'b10111)? A : data_out;

////////////////////////////// Register Block ////////////////////////////////////
always@(posedge clk)
begin
	ans_ex <= ans_tmp;
	DM_data <= B;
	data_out <= tmp;
	flag_reg <= flag_ex;
end

endmodule
/////////////////////////// Adder Subtractor Module //////////////////////////////
module add_sub_8bit(S_D, C_B, Overflow ,A ,B, Operater);

output [7:0] S_D;
output C_B, Overflow;	

input [7:0] A, B;
input Operater;

wire [6:0] ct;

full_adder fa0 (S_D[0], ct[0],A[0],(B[0]^Operater),Operater );
full_adder fa1 (S_D[1], ct[1],A[1],(B[1]^Operater),ct[0] );
full_adder fa2 (S_D[2], ct[2],A[2],(B[2]^Operater),ct[1] );
full_adder fa3 (S_D[3], ct[3],A[3],(B[3]^Operater),ct[2] );
full_adder fa4 (S_D[4], ct[4],A[4],(B[4]^Operater),ct[3] );
full_adder fa5 (S_D[5], ct[5],A[5],(B[5]^Operater),ct[4] );
full_adder fa6 (S_D[6], ct[6],A[6],(B[6]^Operater),ct[5] );
full_adder fa7 (S_D[7], C_B,A[7],(B[7]^Operater),ct[6] ); 

assign Overflow = ct[6]^C_B;

endmodule
//////////////////////// Full Adder Module /////////////////////////
module full_adder(sum, carryout, x, y, carryin);
	input carryin, x, y;
	output carryout, sum;
		
	assign sum = carryin^(x^y);
	assign carryout = ((x^y)&carryin) | (x&y);	
	
endmodule
