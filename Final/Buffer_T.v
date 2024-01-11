`timescale 1ns/1ns

module Buffer_T;
    reg [4:0] receive;
	wire [4:0] transmit;
	
    //reference by name
    Buffer UnitTest (
        .receive(receive),
        .transmit(transmit)
		);
   
 initial
 begin
		receive[0] = 1 ;
		receive[1] = 1 ;
		receive[2] = 1 ;
		receive[3] = 1 ;
		receive[4] = 1 ;
		#1;
		receive[0] = 1 ;
		receive[1] = 0 ;
		receive[2] = 0 ;
		receive[3] = 1 ;
		receive[4] = 0 ;
		#1;
		receive[0] = 0 ;
		receive[1] = 1 ;
		receive[2] = 0 ;
		receive[3] = 1 ;
		receive[4] = 1 ;
		#1;	
	    end
endmodule