module Mux (
  input a,
  input b,
  input sel,
  output reg out
);

  always @(a, b, sel) begin

    //if(sel==0)output a
    if (sel == 1'b0) begin
      out = a;      

    //if(sel==1)output b
    end else begin
      out = b;      
    end
  end

endmodule
