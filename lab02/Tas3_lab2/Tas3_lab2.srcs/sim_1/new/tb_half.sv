`timescale 1ns / 1ps

module tb_half;

logic a,b,sum,carry;



HALF_ADD a1(a,b,sum,carry);

initial begin
    a=1'b0;   
    b=1'b0;
    
#5  a=1'b1;
    b=1'b1;

end     
endmodule    

