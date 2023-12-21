module FullAdder (
  input a,
  input b,
  input c,
  output sum,
  output carry
);

  // 第一個半加器，產生部分和 s1 和進位 c1
  HalfAdder h1 (
    .a(a),
    .b(b),
    .sum(s1), 
    .carry(c1)
  );

  HalfAdder h2 (
    .a(s1), 
    .b(c), 
    .sum(sum), 
    .carry(carry)
  );

  assign carry = c1 | h2.carry; //c1 or h2.carry

endmodule
