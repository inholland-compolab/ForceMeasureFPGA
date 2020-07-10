module MAX11046_module2 ( clock2 ,forces , inputDB , end_of_conv) ;

//
input wire 			end_of_conv;
input wire 			clock2;
//
output reg      	forces; 


//
input [16:0] 		inputDB;


//
reg [15:0]  		DB_in; 
reg u2;

always @(negedge end_of_conv or negedge clock2 )
			begin
			if (end_of_conv ==1'b0) 
				
				DB_in <= inputDB;
				
				else 
					
					begin						
		
					DB_in [15] <= DB_in[14];
					DB_in [14] <= DB_in[13];
					DB_in [13] <= DB_in[12];
					DB_in [12] <= DB_in[11];
					DB_in [11] <= DB_in[10];
					DB_in [10] <= DB_in[9];
					DB_in [9] <= DB_in[8];
					DB_in [8] <= DB_in[7];
					DB_in [7] <= DB_in[6];
					DB_in [6] <= DB_in[5];
					DB_in [5] <= DB_in[4];
					DB_in [4] <= DB_in[3];
					DB_in [3] <= DB_in[2];
					DB_in [2] <= DB_in[1];
					DB_in [1] <= DB_in[0];
					
					end
	 
				    forces <= DB_in[15];
					
			end


endmodule 