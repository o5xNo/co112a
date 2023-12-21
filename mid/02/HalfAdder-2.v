module HalfAdder (
  input a,
  input b, 
  output sum,
  output carry
);

  assign sum = a ^ b;  // a xor b
  assign carry = a & b;

endmodule
