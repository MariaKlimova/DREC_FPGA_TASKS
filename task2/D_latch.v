module D_latch(
    e_i,
    d_i,
    q_o,
    q_inv_o
);

input wire e_i;
input wire d_i;
output wire q_o;
output wire q_inv_o;

wire r = (~d_i & e_i);
wire s = (d_i & e_i);

SR_latch SR_latch_inst(
    .r_i(r),
    .s_i(s),
    .q_o(q_o),
    .q_inv_o(q_inv_o)
);

endmodule