`timescale 1ns / 1ps
`timescale 1ns / 1ps


module tb_Sub_Abber;

    logic  [3:0] a;
    logic  [3:0] b;
    logic  cin;       
    logic  [3:0] sum;
    logic  carry;
          

sub_Adder subAdder(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry(carry)      
  
);
   
 initial begin 
  $display("time\t a  b cin  sum carry");
  
  a= 4'b0010; b=4'b1001; cin =1;  #10;//sub  
 $display("%0t\t %b %b %b  %b  %b", $time, a, b, cin, sum, carry);
 a= 4'b0010; b=4'b1001; cin =0;#10; //add 
 $display("%0t\t %b %b %b  %b  %b", $time, a, b, cin, sum, carry);
  a= 4'b1001; b=4'b1101; cin =1; #10;//sub  
 $display("%0t\t %b %b %b  %b  %b", $time, a, b, cin, sum, carry);
  a= 4'b0110; b=4'b1010; cin =1; #10;//sub  
 $display("%0t\t %b %b %b  %b  %b", $time, a, b, cin, sum, carry);
   a= 4'b1001; b=4'b1101; cin =0; #10;//add  
 $display("%0t\t %b %b %b  %b  %b", $time, a, b, cin, sum, carry);
  a= 4'b0110; b=4'b1010; cin =0; #10;//add  
 $display("%0t\t %b %b %b  %b  %b", $time, a, b, cin, sum, carry);
 
 
 $finish;
 end
 endmodule  
  





