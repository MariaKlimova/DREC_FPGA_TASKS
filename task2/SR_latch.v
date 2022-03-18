module SR_latch(
    r_i,
    s_i,
    q_o,
    q_inv_o
);

input wire r_i;
input wire s_i;
output wire q_o;
output wire q_inv_o;


assign q_o = ~(r_i&q_inv_o);
assign q_inv_o = ~(s_i&q_o);

endmodule