module DMux (
  input in,
  input sel,
  output reg a,
  output reg b
);

  assign b = in & sel; // in and sel
  assign a = in & ~sel;  // in and not(sel)

  //假設sel=0 則 a=in, b=0; sel=1 則反之

endmodule