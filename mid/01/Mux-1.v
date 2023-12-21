module Mux (
  input a,
  input b,
  input sel,
  output reg out
);

  //Not(in=sel, out=selnot);
  Not not1 (
    .in(sel),
    .out(selnot)
  );

  //And(a=a, b=selnot, out=andout1);
  And and1 (
    .a(a),
    .b(selnot),
    .out(andout1)
  );

  //And(a=sel, b=b, out=andout2);
  And and2 (
    .a(sel),
    .b(b),
    .out(andout2)
  );

  //Or(a=andout1, b=andout2, out=out);
  Or or1 (
    .a(andout1),
    .b(andout2),
    .out(out)
  );

endmodule
