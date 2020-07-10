module top (CONVST , CS ,RD, DB[15:0] ,force_n, EOC, WR , SHDN ); 

//input from ADC
	input wire  [15:0] 	DB	   ;
	input wire	            EOC    ; 
	
//Output control Signals to ADC
	output wire  CONVST , CS ,RD, WR , SHDN	        ;
	output wire  		force_n						    ;

	//Clock-setup
	wire fpga_clock;
	//
	
	OSCH #(.NOM_FREQ("133.00")) rc_oscillator(.STDBY(1'b0), .OSC(fpga_clock));


MAX11046_module1 u1( .clock1(fpga_clock) , .end_of_con(EOC) , .conv_start(CONVST) , .chip_sel(CS), .write(WR) , .read_s(RD) , .shutd(SHDN) );
//MAX11046_module2 u2( .clock2(fpga_clock) , .forces(force_n) , .inputDB(DB), .end_of_conv(EOC) 												); 
//MAX11046_module3 u3( .Clock(fpga_clock)  , .Reset(SHDN) , .Din(DB) ,	.Q(force_n)	, .endof_con(EOC)	, .ClockEn(1'b1)	   									);	
//MAX11046_module4 u4 ( .clk(fpga_clock) , .reset(SHDN)  , .datain(DB)  , .q(force_n)															);
MAX11046_module5 u5 ( .clk(CLKI), .reset(SHDN) , .loaden_o(EOC) , .serial_data_out(force_n) , .parallel_data_in(DB)					);
endmodule	