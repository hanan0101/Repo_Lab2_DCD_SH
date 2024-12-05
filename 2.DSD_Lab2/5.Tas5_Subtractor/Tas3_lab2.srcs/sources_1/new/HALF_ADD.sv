`timescale 1ns / 1ps



module HALF_ADD(input a,
input b, output sum,
output carry);
xor (sum,a,b);
and (carry,a,b);
endmodule
