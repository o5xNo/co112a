module Adder16 (
  input [15:0] a,
  input [15:0] b,
  output [15:0] out
);

  //此題我就不標註原本的.hdl(太多了)

  HalfAdder halfAdder1 (
    .a(a[0]),
    .b(b[0]),
    .sum(out[0]),
    .carry(c1)
  );

  FullAdder fullAdder1 (
    .a(a[1]),
    .b(b[1]),
    .c(c1),
    .sum(out[1]),
    .carry(c2)
  );

  FullAdder fullAdder2 (
    .a(a[2]),
    .b(b[2]),
    .c(c2),
    .sum(out[2]),
    .carry(c3)
  );

  FullAdder fullAdder3 (
    .a(a[3]),
    .b(b[3]),
    .c(c3),
    .sum(out[3]),
    .carry(c4)
  );

  FullAdder fullAdder4 (
    .a(a[4]),
    .b(b[4]),
    .c(c4),
    .sum(out[4]),
    .carry(c5)
  );

  FullAdder fullAdder5 (
    .a(a[5]),
    .b(b[5]),
    .c(c5),
    .sum(out[5]),
    .carry(c6)
  );

  FullAdder fullAdder6 (
    .a(a[6]),
    .b(b[6]),
    .c(c6),
    .sum(out[6]),
    .carry(c7)
  );

  FullAdder fullAdder7 (
    .a(a[7]),
    .b(b[7]),
    .c(c7),
    .sum(out[7]),
    .carry(c8)
  );

  FullAdder fullAdder8 (
    .a(a[8]),
    .b(b[8]),
    .c(c8),
    .sum(out[8]),
    .carry(c9)
  );

  FullAdder fullAdder9 (
    .a(a[9]),
    .b(b[9]),
    .c(c9),
    .sum(out[9]),
    .carry(c10)
  );

  FullAdder fullAdder10 (
    .a(a[10]),
    .b(b[10]),
    .c(c10),
    .sum(out[10]),
    .carry(c11)
  );

  FullAdder fullAdder11 (
    .a(a[11]),
    .b(b[11]),
    .c(c11),
    .sum(out[11]),
    .carry(c12)
  );

  FullAdder fullAdder12 (
    .a(a[12]),
    .b(b[12]),
    .c(c12),
    .sum(out[12]),
    .carry(c13)
  );

  FullAdder fullAdder13 (
    .a(a[13]),
    .b(b[13]),
    .c(c13),
    .sum(out[13]),
    .carry(c14)
  );

  FullAdder fullAdder14 (
    .a(a[14]),
    .b(b[14]),
    .c(c14),
    .sum(out[14]),
    .carry(c15)
  );

  FullAdder fullAdder15 (
    .a(a[15]),
    .b(b[15]),
    .c(c15),
    .sum(out[15]),
    .carry(c16)
  );

endmodule