`timescale 1ns/10ps

module D_tb();
reg d_i;
reg e_i;

wire q_o;
wire q_inv_o;

D_latch D_latch_inst(
    .d_i(d_i),
    .e_i(e_i),
    .q_o(q_o),
    .q_inv_o(q_inv_o)
);

initial begin
  $monitor("e=%b, d=%b, q=%b, q_inv=%b \n", e_i, d_i, q_o, q_inv_o);

  e_i = 1'b1;
  d_i = 1'b0;

  #10
  e_i = 1'b1;
  d_i = 1'b1;

  #10
  e_i = 1'b0;
  d_i = 1'b0;

  #10
  e_i = 1'b0;
  d_i = 1'b1;

  #10
  e_i = 1'b1;
  d_i = 1'b0;

  #10
  e_i = 1'b0;
  d_i = 1'b1;

  #10
  e_i = 1'b0;
  d_i = 1'b0;

  

end

endmodule
