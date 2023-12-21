module ALU (
  input [15:0] x,    
  input [15:0] y,
  input zx,             
  input nx,             
  input zy,             
  input ny,             
  input f,              
  input no, 
  output [15:0] out,
  output zr,           
  output ng             
);

  //此題我就不標註原本的.hdl(太多了)

  Mux16 muxX (
    .a(x),
    .b(16'b0),
    .sel(zx),
    .out(zxx)
  );

  Not16 notX (
    .in(zxx),
    .out(notx)
  );

  Mux16 muxY (
    .a(y),
    .b(16'b0),
    .sel(zy),
    .out(zyy)
  );

  // Negate the y input
  Not16 notY (
    .in(zyy),
    .out(noty)
  );

  // Adder for f=1, And for f=0
  Add16 adder (
    .a(notx),
    .b(noty),
    .out(addf)
  );

  And16 andGate (
    .a(notx),
    .b(noty),
    .out(andf)
  );

  // Mux between Adder and And
  Mux16 muxF (
    .a(andf),
    .b(addf),
    .sel(f),
    .out(fxy)
  );

  // Negate the output
  Not16 notOut (
    .in(fxy),
    .out(noxy)
  );

  // Mux between output and negated output
  Mux16 muxNO (
    .a(fxy),
    .b(noxy),
    .sel(no),
    .out(xx)
  );

  // Check if out is zero
  And16 andZero (
    .a(xx),
    .b(xx),
    .out(out)
  );

  // Check if out is negative
  Or16 orNeg (
    .a(xx),
    .b(16'b0),
    .out(out)
  );

  // Calculate zr (1 if out == 0, 0 otherwise)
  Or8Way or8way1 (
    .in(out[0:7]),
    .out(o1)
  );

  Or8Way or8way2 (
    .in(out[8:15]),
    .out(o2)
  );

  Or orZr (
    .a(o1),
    .b(o2),
    .out(zr)
  );

  // Calculate ng (1 if out < 0, 0 otherwise)
  Or orNeg1 (
    .a(out[0]),
    .b(out[1]),
    .out(ng[0])
  );

  Or orNeg2 (
    .a(out[2]),
    .b(out[3]),
    .out(ng[1])
  );

  Or orNeg3 (
    .a(out[4]),
    .b(out[5]),
    .out(ng[2])
  );

  Or orNeg4 (
    .a(out[6]),
    .b(out[7]),
    .out(ng[3])
  );

  Or orNeg5 (
    .a(out[8]),
    .b(out[9]),
    .out(ng[4])
  );

  Or orNeg6 (
    .a(out[10]),
    .b(out[11]),
    .out(ng[5])
  );

  Or orNeg7 (
    .a(out[12]),
    .b(out[13]),
    .out(ng[6])
  );

  Or orNeg8 (
    .a(out[14]),
    .b(out[15]),
    .out(ng[7])
  );

endmodule
