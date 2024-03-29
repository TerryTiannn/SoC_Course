`timescale 1ns / 1ps

module Buffer(
	input clk,
	input [4:0] receive,
    output reg [4:0] transmit

	 );

//receive [4]→AB1,GPIO_24:傳送為有效，表示1。
wire receive_valid;
assign receive_valid = receive [4];

/*reg rx_data_complete;
reg data_buf_complete;*/

reg [3:0] data_buf;
reg receive_susscess;
reg transmit_ready;

//將接收到的值傳給Buffer
always @(posedge clk)begin
	if (receive_valid == 1)begin
	   //receive [3:0]低至高 0→3分別是AB2.AA7.AB11.AA11,GPIO_23.18.15.14
	   //transmit[3:0]低至高 0→3分別是Y11.AA6.AB9.AB10,GPIO_10.22.27.17
		data_buf[0] = receive [0];
		data_buf[1] = receive [1];
		data_buf[2] = receive [2];
		data_buf[3] = receive [3];
		receive_susscess = 1;
		end
	else begin
		data_buf[3:0] <= 4'b0000;
		receive_susscess <= 1'b0;
	end
end

//Buffer旗標成功為1，傳給output
//先放好資料給output，在等待最後transmit[4]=0傳送出去
always @(posedge clk)begin
	if (receive_susscess == 1 && receive_valid == 1)begin
		transmit[0] = data_buf[0];
		transmit[1] = data_buf[1];
		transmit[2] = data_buf[2];
		transmit[3] = data_buf[3];
		transmit_ready = 1;
		end
	else begin
		transmit[3:0] = 4'bxxxx;
		transmit_ready = 0;
	end
	end
//transmit[4]→Y10,GPIO_9→0，與晶片溝通可傳送
always @(posedge clk)begin
	if (transmit_ready == 1)begin
		transmit[4] = 0;
		end
	else begin
		transmit[4] = 1;
	end
	end


endmodule