
`timescale 1ns/1ns

module dual_synchro_tb;

wire sync_out_tb;
reg clk_tb;
reg reset_tb;
reg data_in_tb;

dual_flop_synchro dut(
.clk(clk_tb),
.sync_out(sync_out_tb),
.reset(reset_tb),
.data_in(data_in_tb));

//initial begin
//	clk1_tb<=0;
//	forever #10 clk1_tb<=~clk1_tb;
//end

initial begin
	clk_tb<=0;
	forever #5 clk_tb<=~clk_tb;
end

initial begin
	data_in_tb<=0;
	

	forever #10 data_in_tb<=~data_in_tb;
	
end
endmodule