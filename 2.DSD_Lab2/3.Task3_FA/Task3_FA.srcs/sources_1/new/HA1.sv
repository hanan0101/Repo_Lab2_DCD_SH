`timescale 1ns / 1ps

// Half Adder module
module HA(
    input a,
    input b,
    output sum,
    output carry
    
);
     
    xor xor_gate(sum, a, b);
    and  and_gate(carry,a,b);
    
    
endmodule