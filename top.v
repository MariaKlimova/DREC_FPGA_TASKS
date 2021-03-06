module top(
	clk_i,
	rstn_i,
	sel_i,
	dclk_o,
	en_i 
);

input wire clk_i;
input wire rstn_i;
input wire [1:0] sel_i;
input wire en_i;
output wire dclk_o;

wire dclk;
clkdiv clkdiv_inst(
	.clk_i(clk_i),
	. rstn_i(rstn_i),
	. sel_i(sel_i),
	 .dclk_o(dclk)
);

assign dclk = dclk&en_i;

endmodule

//latch
//wire en;
//wire d;
//reg q;

//assign q = en ? d : q
