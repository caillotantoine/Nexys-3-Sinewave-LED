`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:30 03/02/2021 
// Design Name: 
// Module Name:    top 
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
module top(
    input [7:0] speed,
    input clk,
    output led
    );

	wire clk_100k;
	wire clk_pwm;
	wire [7:0] dutycycle;
	wire [23 : 0] phase_out;
	
	wire [7:0] absolute_dutycycle;
	
	assign absolute_dutycycle = dutycycle + 8'b01000000;
	
	clk_divider #(1000) sinewave_clk_m (
		.clk_i(clk),
		.clk_o(clk_100k)
	);
	
	sinewave_gen sinewave_generator_m (
	  .clk(clk_100k), // input clk
	  .sine(dutycycle), // output [7 : 0] sine
	  .phase_out(phase_out) // output [23 : 0] phase_out
	);
	
	clk_divider #(744) pwm_clk_m (
		.clk_i(clk),
		.clk_o(clk_pwm)
	);
	
	PWM_gen pwm_generator_m(
		.clk_i(clk_pwm),
		.dutycycle_i(absolute_dutycycle),
		.pwm_o(led)
   );

endmodule
