`timescale 1ns/10ps

module SR_tb();
reg s_i;
reg r_i;

wire q_o;
wire q_inv_o;

SR_latch SR_latch_inst(
    .r_i(r_i),
    .s_i(s_i),
    .q_o(q_o),
    .q_inv_o(q_inv_o)
);

initial begin
  $monitor("s=%b, r=%b, q=%b, q_inv=%b \n", s_i, r_i, q_o, q_inv_o);

  r_i = 1'b0;
  s_i = 1'b1;

  #10
  s_i = 1'b0;
  r_i = 1'b1;

  #10
  s_i = 1'b1;

end

endmodule
