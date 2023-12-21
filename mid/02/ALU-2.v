module ALU (
  input [15:0] x,
  input [15:0] y,
  input zx, nx, zy, ny, f, no,
  output [15:0] out,
  output zr, ng
);

  wire [15:0] x_output, y_output;

  //if(zx==1)x_output(all->0)
  //else if(nx==1)x_output=not(x)
  //else x_output=x
  assign x_output = (zx) ? 16'b0 : (nx) ? ~x : x; 

  //if(zy=1)y_output(all->0)
  //else if(ny==1)y_output=not(y)
  //else y_output=y
  assign y_output = (zy) ? 16'b0 : (ny) ? ~y : y; 


  always @* begin
    if (f) //f=1
      out = x_output + y_output;

    else //f=0
      out = x_output & y_output;
  end

  always @* begin
    if (no)
      out = ~out; //if(no==1)not(out)
  end

  always @* begin
    zr = (out == 16'b0);
  end

  always @* begin
    ng = (out < 0);
  end

endmodule
