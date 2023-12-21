 module DMux4Way (
  input in,
  input [1:0] sel,
  output reg a,
  output reg b,
  output reg c,
  output reg d
);

  // 將輸入 I 根據 sel 的值選擇性地輸出到四個輸出端口
  assign a = (sel == 2'b00) ? in : 1'b0;  // 如果 sel 是 "00"，則 a = I，否則 a = 0
  assign b = (sel == 2'b01) ? in : 1'b0;  // 如果 sel 是 "01"，則 b = I，否則 b = 0
  assign c = (sel == 2'b10) ? in : 1'b0;  // 如果 sel 是 "10"，則 c = I，否則 c = 0
  assign d = (sel == 2'b11) ? in : 1'b0;  // 如果 sel 是 "11"，則 d = I，否則 d = 0

endmodule
