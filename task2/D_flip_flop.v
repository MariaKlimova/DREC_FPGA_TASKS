module D_flip_flop(
    e_i,
    d_i,
    q_o,
    q_inv_o
);

input wire e_i;
input wire d_i;
output wire q_o;
output wire q_inv_o;

wire d2;
wire q1_inv;

    
D_latch D_latch1(
    .e_i(e_i),
    .d_i(d_i),
    .q_o(d2),
    .q_inv_o(q_inv1)
);

D_latch D_latch2(
    .e_i(e_i),
    .d_i(d2),
    .q_o(q_o),
    .q_inv_o(q_inv_o)
);



endmodule