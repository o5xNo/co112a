 module DMux4Way (
  input in,
  input [1:0] sel,
  output reg a,
  output reg b,
  output reg c,
  output reg d
);


  reg x, y; // 宣告變數

  //DMux(in=in, sel=sel[1], a=x, b=y);
  DMux dmux1 (
    .in(in),
    .sel(sel[1]),
    .a(x),
    .b(y)
  ); 
 
  //DMux(in=x, sel=sel[0], a=a, b=b);
  DMux dmux2 (
    .in(x),
    .sel(sel[0]),
    .a(a),
    .b(b)
  ); 
  
  //DMux(in=y, sel=sel[0], a=c, b=d);
  DMux dmux3 (
    .in(y),
    .sel(sel[0]),
    .a(c),
    .b(d)
  ); 

endmodule
