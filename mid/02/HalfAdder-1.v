module HalfAdder (
  input a,
  input b, 
  output sum,
  output carry
);

  //Xor(a=a,b=b,out=sum);
  Xor xor1 (
    .a(a),
    .b(b),
    .out(sum)
  );

  //And(a=a,b=b,out=carry);
  And and1 (
    .a(a),
    .b(b),
    .out(carry)
  );

endmodule
