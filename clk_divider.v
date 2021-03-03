`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:21 03/02/2021 
// Design Name: 
// Module Name:    clk_divider 
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
module clk_divider
#(parameter N = 1000)
(
    input clk_i,
    output reg clk_o = 1'b0
);

	reg [15:0]counter = 16'd0;
	
	always @(posedge clk_i) begin
		if (counter >= N || counter == 16'hFFFF) begin
			clk_o <= ~clk_o;
			counter <= 16'd0;
		end else begin
			counter <= counter + 16'd1;
		end
		
	end


endmodule
