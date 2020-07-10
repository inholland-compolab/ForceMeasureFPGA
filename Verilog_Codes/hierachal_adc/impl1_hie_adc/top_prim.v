// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.1.441
// Netlist written on Tue Dec 17 11:22:53 2019
//
// Verilog Description of module top
//

module top (CONVST, CS, RD, DB, force_n, EOC, WR, SHDN) /* synthesis syn_module_defined=1 */ ;   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(1[8:11])
    output CONVST;   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(8[15:21])
    output CS;   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(8[24:26])
    output RD;   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(8[28:30])
    input [15:0]DB;   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(4[22:24])
    output force_n;   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(9[17:24])
    input EOC;   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(5[25:28])
    output WR;   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(8[32:34])
    output SHDN;   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(8[37:41])
    
    
    wire GND_net, CONVST_c_c, VCC_net;
    
    VHI i2 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    OB RD_pad (.I(VCC_net), .O(RD));   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(8[28:30])
    OB CS_pad (.I(VCC_net), .O(CS));   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(8[24:26])
    OB WR_pad (.I(GND_net), .O(WR));   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(8[32:34])
    GSR GSR_INST (.GSR(VCC_net));
    OB force_n_pad (.I(GND_net), .O(force_n));   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(9[17:24])
    IB CONVST_c_pad (.I(EOC), .O(CONVST_c_c));   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(5[25:28])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB SHDN_pad (.I(GND_net), .O(SHDN));   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(8[37:41])
    OB CONVST_pad (.I(CONVST_c_c), .O(CONVST));   // c:/users/inholland/desktop/elwin/diamond/projects/hierachal_adc/adc_top.v(8[15:21])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

