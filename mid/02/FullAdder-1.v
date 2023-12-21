module FullAdder (
  input a,
  input b,
  input c,
  output sum,
  output carry
);

  //HalfAdder(a=a,b=b,sum=x,carry=y);
  HalfAdder halfAdder1 (
    .a(a),
    .b(b),
    .sum(x),
    .carry(y)
  );

  //HalfAdder(a=c,b=x,sum=sum,carry=z);
  HalfAdder halfAdder2 (
    .a(c),
    .b(x),
    .sum(sum),
    .carry(z)
  );

  //Or(a=y,b=z,out=carry);
  Or orGate (
    .a(y),
    .b(z),
    .out(carry)
  );

endmodule
