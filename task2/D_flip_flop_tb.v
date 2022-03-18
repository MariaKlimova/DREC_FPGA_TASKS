`timescale 1ns/10ps

module D_flip_flop_tb();
reg d_i;
reg e_i;

wire q_o;
wire q_inv_o;

D_flip_flop D_flip_flop_inst(
    .d_i(d_i),
    .e_i(e_i),
    .q_o(q_o),
    .q_inv_o(q_inv_o)
);

initial begin
  $monitor("d=%b, e=%b, q=%b, q_inv=%b \n", d_i, e_i, q_o, q_inv_o);

  $dumpvars;

  e_i = 1'b1;
  d_i = 1'b0;

  #100
  e_i = 1'b1;
  d_i = 1'b1;

  #100
  e_i = 1'b0;
  d_i = 1'b0;

  #100
  e_i = 1'b0;
  d_i = 1'b0;

  #100
  e_i = 1'b1;
  d_i = 1'b0;
  
  #100;
  $finish;

  
  #10 $finish;


  

end

endmodule
