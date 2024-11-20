`timescale 1ns / 1ps

module test_HD;
logic a, b, sum ,carry;

//inctsance 
HalfAdder hd(a,b,sum,carry);

initial begin

 // Display header
$display("Time\t a b sum, carry");

a = 0; b = 0;  ; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t %b %b", $time, a, b, sum ,carry);
#3
a = 1; b = 0;  ; #10;

$display("%0t\t %b\t %b\t %b %b", $time, a, b, sum ,carry);
#5
a = 0; b = 1;  ; #10;

$display("%0t\t %b\t %b\t %b %b", $time, a, b, sum ,carry);
a = 1; b = 1;  ; #10;
#7
$display("%0t\t %b\t %b\t %b %b", $time, a, b, sum ,carry);

$finish;
 end 
endmodule
