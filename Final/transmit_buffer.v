`timescale 1ns / 1ps

module transmit_buffer(
	input clk,
	input [4:0] transmit,
    output reg [4:0] receive

	 );
reg [4:0] data_buf;


always @(posedge clk)begin

		data_buf[0] = transmit [0];
		data_buf[1] = transmit [1];
		data_buf[2] = transmit [2];
		data_buf[3] = transmit [3];
		data_buf[4] = transmit [4];
		end


always @(posedge clk)begin
		receive[0] = data_buf[0];
		receive[1] = data_buf[1];
		receive[2] = data_buf[2];
		receive[3] = data_buf[3];
		receive[4] = data_buf[4];
		end

endmodule