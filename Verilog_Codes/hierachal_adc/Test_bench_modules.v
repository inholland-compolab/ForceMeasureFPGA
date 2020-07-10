`timescale 1 ns / 1 ns


module testbench ; 

	
	reg EOC		        ;
	reg [15:0] DB		;
	

    wire SHDN ; 
	wire CONVST;
    wire CS;
    wire RD;
    wire force_n;
    wire WR;
	//wire rst ; 
	

top UUT (.EOC(EOC), .force_n(force_n),.CS(CS),.RD(RD),.WR(WR), .SHDN(SHDN), .CONVST(CONVST));
    //assign CONVST = 1'b0 ;	
	
	initial 
	begin 
		
		
		
		#1000;
		EOC = 0 ; 
		#1000
		EOC = 1 ;
		#3000
		DB = 1'b0;
	    EOC = 0; 
		DB [15:0] = 16'b11111;
		#35
		DB [15:0] = 16'b101101_1010;
		#50
		DB [15:0] = 16'b100001_1010;
		#35
		DB [15:0] = 16'b10110001_11010;
		#35
		DB [15:0] = 16'b101101_1010;
		#35
		DB [15:0] = 16'b101101_11110;
		#1000; 
		EOC = 1 ; 
		#1000
		EOC = 0 ;
		DB [15:0] = 16'b1110_1111_0000_10101;
		#1000
	    EOC = 1; 
		#1000; 
		EOC = 0;
		#1000;
		EOC = 1; 
		#1000
		
		$finish ;
	end


endmodule 

	
	

		