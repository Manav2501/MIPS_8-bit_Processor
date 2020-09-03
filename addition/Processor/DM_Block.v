`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:07:22 08/19/2017 
// Design Name: 
// Module Name:    DM_Block 
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
module DM_Block(ans_dm, ans_ex, DM_data, mem_rw_ex, mem_en_ex, mem_mux_sel_dm, reset, clk);

// Inputs
input [7:0] ans_ex, DM_data;
input mem_rw_ex, mem_en_ex, mem_mux_sel_dm, reset, clk;

// Outputs
output [7:0] ans_dm;

// Temp Variables
wire [7:0] DM_out, Ex_out_tmp;
reg [7:0] Ex_out;

// assign Ex_out control by reset
assign Ex_out_tmp = (reset == 1'b0) ? 8'H00 : ans_ex;

always@(posedge clk)
begin
	Ex_out <= Ex_out_tmp;
end

// Data Memory Block
Data_Memory dm (
  .clka(clk), // input clka
  .ena(mem_en_ex), // input ena
  .wea(mem_rw_ex), // input [0 : 0] wea
  .addra(ans_ex), // input [7 : 0] addra
  .dina(DM_data), // input [7 : 0] dina
  .douta(DM_out) // output [7 : 0] douta
);

// Assiging ans_dm acc. to memory select line
assign ans_dm = (mem_mux_sel_dm == 1'b0) ? Ex_out : DM_out;

endmodule
