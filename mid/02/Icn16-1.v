module Inc16 (
  input [15:0] in,
  output reg [15:0] out
);

  //Add16(a=in,b[0]=true,b[1..15]=false,out=out);
  Add16 adder (
    .a(in),
    .b({1'b1, 15'b0}),
    .out(out)
  );

endmodule