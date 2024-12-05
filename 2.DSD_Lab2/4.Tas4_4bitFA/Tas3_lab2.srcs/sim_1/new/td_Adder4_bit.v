`timescale 1ns / 1ps



module td_Adder4_bit;
     reg [3:0] a;
     reg [3:0] b;
     reg cin;        // cin should be 1 bit, not 4 bits
     wire [3:0] sum;
     wire  carry;  

    Adder4_bit adder_4bit (
    .a( a),
    .b(b),
    .cin(cin),        // cin should be 1 bit, not 4 bits
    .sum(sum),
    .carry(carry)      // Final carry should be 1 bit, not 4 bits
);

initial begin
        $display("time\t a     b   cin sum  carry");
        //test cases 
      a = 4'b0001; b=4'b0001;  cin=0;  #10;
      $display("%0t\t %b %b %b %b %b", $time, a, b, cin, sum, carry);
      a = 4'b0001; b = 4'b0001; cin = 1; #10;
      $display("%0t\t %b %b %b %b %b", $time, a, b, cin, sum, carry);
      a = 4'b0000; b=4'b0001;  cin=1;  #10;
      $display("%0t\t %b %b %b %b %b", $time, a, b, cin, sum, carry);
      a = 4'b0001; b = 4'b0000; cin = 1; #10;
      $display("%0t\t %b %b %b %b %b", $time, a, b, cin, sum, carry);
      a = 4'b0000; b = 4'b0000; cin = 1; #10;
      $display("%0t\t %b %b %b %b %b", $time, a, b, cin, sum, carry);
      a = 4'b0000; b = 4'b0000; cin = 0; #10;
      $display("%0t\t %b %b %b %b %b", $time, a, b, cin, sum, carry);
   end 
endmodule
