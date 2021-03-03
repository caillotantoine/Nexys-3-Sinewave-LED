`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:43 03/02/2021 
// Design Name: 
// Module Name:    PWM_gen 
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
module PWM_gen(
    input clk_i,
    input [7:0] dutycycle_i,
    output reg pwm_o = 1'b0
    );

	reg [7:0] counter = 8'd0;
	
	always @(posedge clk_i) begin
		pwm_o <= (counter <= dutycycle_i) ? 1'b1 : 1'b0;
		counter <= (counter < 8'hFF) ? (counter + 8'd1) : 8'd0;
	end

endmodule
