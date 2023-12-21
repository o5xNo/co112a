module DMux (
  input in,
  input sel,
  output reg a,
  output reg b
);

  //And(a=in, b=sel, out=b);
  And and1 (
    .a(in),
    .b(sel),
    .out(b)
  );

  //Not(in=sel, out=selnot);
  Not not1 (
    .in(sel),
    .out(selnot)
  );

  //And(a=in, b=selnot, out=a);
  And and2 (
    .a(in),
    .b(selnot),
    .out(a)
  );

endmodule
