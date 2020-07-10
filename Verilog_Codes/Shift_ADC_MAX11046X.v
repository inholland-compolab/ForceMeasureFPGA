module top (CONVST , CS ,RD, DB[15:0] ,force_n, EOC, WR ); 

//External Reset DIP switch 
	//input wire 	RST; 

//input from ADC
	input wire  [15:0] 	DB	   ;
	input wire	            EOC    ; 
	
//Output control Signals to ADC
	output wire  CONVST , CS ,RD, WR	        ;
	output wire  force_n				     	;

	//Clock-setup
	wire fpga_clock;
	
	OSCH #(.NOM_FREQ("133.00")) rc_oscillator(.STDBY(1'b0), .OSC(fpga_clock));
	MAX11046_Control counter(.clock(fpga_clock), .forces(force_n) , .end_of_con(EOC), .inputDB(DB), .conv_start(CONVST) , .chip_sel(CS), .write(WR) , .read_s(RD) );
endmodule	

module MAX11046_Control (clock, forces, end_of_con, inputDB ,conv_start,chip_sel,write, read_s ) ;

		input wire clock; 
		input wire end_of_con;
		 
		input [15:0] inputDB;
		
		output reg     forces; 
		output reg 	   conv_start;
		output reg		chip_sel;
		output reg		write   ;
		output reg		read_s  ;
		
		reg        switch_rst;
		reg [5:0] 	 counter;
		reg [15:0]  DB_in; 
		
		integer i; 
		
	initial
	begin
		//Registors =0
		forces = 16'b0;
		counter = 5'b0 ;
		DB_in  = 16'b0;
		switch_rst = 1'b0;
		
		//Chip pins intial state
		chip_sel   = 1'b1;
	    read_s     = 1'b1;
		write      = 1'b1;
		#500
		conv_start = 1'b1;
		  
	end
	
	//Starting Converstion
		
		  //assign            RD = 	    1'b0;
		 
		  //assign #1000   CONVST  = 1'b1   ;   //START 
		  //assign    CONVST  = 1'b0   ;   
		   
	
	always @( negedge end_of_con  )
			begin
				
				
					if (end_of_con == 1'b0 ) 
							
							
							#50						
							read_s	 = 1'b0; 
							chip_sel = 1'b0;
							#35000 
							
							read_s	 = 1'b1;	
								#15000
							read_s	 = 1'b0; 
								#35000 
							read_s	 = 1'b1;
							    #15000
							read_s	 = 1'b0; 
								#35000 
							read_s	 = 1'b1;
								#15000
							read_s	 = 1'b0; 
								#35000 
							read_s	 = 1'b1;
							   #15000   
							 read_s	 = 1'b0; 
								#35000 
							read_s	 = 1'b1; 
								#15000
							read_s	 = 1'b0; 
								#35000 
							read_s	 = 1'b1;
							chip_sel = 1'b1;							
							    #50000
								
						   counter = counter + 1'b1;
						   
						   //put reset here
							switch_rst = 1'b1 ; 
							#1000
							switch_rst = 1'b0;
							
					end 	
					
						
/*				
	always @( posedge clock ) 
		
 		if (switch_rst == 1'b1)		begin
			#100
        //chip_sel   <= 1'b1;
	    //read_s     <= 1'b1;
		//write      <= 1'b1;
		
		conv_start <= 1'b1;
		end
*/

always @ (posedge switch_rst)
	begin
		case (switch_rst)
		1'b1    : #1000 conv_start  = 1'b0 ; 	
		default : conv_start = 1'b1 ; 
		endcase 
		
		//switch_rst = 1'b0 ;
	end 	
	
	
	
//or maybe negedge read_s 
	always @(negedge end_of_con , negedge clock )
			begin
			if (end_of_con ==1'b0) 
				
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
					   					   
						 
				    forces = DB_in[15];		
		end		

/*
always  @ (posedge clock)
	begin 
		if 
	
*/							   
	
endmodule		

	