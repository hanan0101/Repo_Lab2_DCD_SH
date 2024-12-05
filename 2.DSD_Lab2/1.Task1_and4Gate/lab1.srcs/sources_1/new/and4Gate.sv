`timescale 1ns / 1ps


module and4Gate(

     input logic a ,
     input logic b,
     input logic c, 
     input logic d,
     output logic f
    );
    
    wire  w1;
    wire  w2;
    
    andGate G1(.a(a),.b(b),.f(w1) );
    andGate G2(.a(c),.b(d),.f(w2));
    andGate G3(.a(w1),.b(w2),.f(f));
    
endmodule


