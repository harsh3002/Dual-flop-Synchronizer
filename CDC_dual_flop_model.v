
`timescale 1ns/1ns


module dual_flop_CDC_model(
output  clk2_out,
input clk1,
input clk2,
input reset,
input clk1_in);

reg clk1_ff_out;

dual_flop_synchro inst(
.clk(clk2),
.sync_out(clk2_out),
.reset(reset),
.data_in(clk1_in));

always@(posedge clk1) begin
	if(reset) clk1_ff_out<=0;
	else clk1_ff_out<=clk1_in;

end



endmodule