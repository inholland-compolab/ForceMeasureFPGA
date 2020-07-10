module MAX11046_module3 (Reset , Din , Clock , Q , endof_con , ClockEn); 

//
input wire Reset   ;
input wire Clock   ;
input wire endof_con;
input wire ClockEn  ;
//
//input data [15:0]   ;


output reg Q ; 
//
input [15:0] Din    ;
reg u3			   	 ; 


//
reg [15:0] temp     ;
//

always @ (negedge  Clock)
	begin
		
	if	(endof_con == 1'b0)
	 temp <= Din ; 
	else
		begin
			Q <= temp[0] ; 
			temp <= {1'b0, temp[15:1]};
		end
	end	




endmodule 