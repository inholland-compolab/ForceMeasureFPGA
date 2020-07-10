lappend auto_path "C:/lscc/diamond/3.11_x64/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) top
set ::bali::Para(PROJECT) Hierachal_ADC
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.11_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.11_x64/cae_library/synthesis/verilog/machxo3l.v"}
set ::bali::Para(FILELIST) {"C:/Users/Inholland/Desktop/Elwin/Diamond/Projects/hierachal_adc/ADC_top.v=work" "C:/Users/Inholland/Desktop/Elwin/Diamond/Projects/hierachal_adc/MAX11046_module1.v=work" "C:/Users/Inholland/Desktop/Elwin/Diamond/Projects/hierachal_adc/MAX11046_module2.v=work" "C:/Users/Inholland/Desktop/Elwin/Diamond/Projects/hierachal_adc/MAX11046_module3.v=work" "C:/Users/Inholland/Desktop/Elwin/Diamond/Projects/hierachal_adc/Memory_Shift.v=work" "C:/Users/Inholland/Desktop/Elwin/Diamond/Projects/hierachal_adc/Memory_SDR.v=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
