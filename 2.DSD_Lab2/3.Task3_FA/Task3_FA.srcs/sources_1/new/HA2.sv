`timescale 1ns / 1ps
module FA(
  input a,
  input b,
  input cin, //carry
  output sum,
  output carry,
  wire s1 ,c1,c2

);
  
  HA H1(s1 ,c1 ,a,b);
  HA H2(sum ,c2 ,a,cin);
  or or_gate( carry ,c1,c2 );

endmodule
