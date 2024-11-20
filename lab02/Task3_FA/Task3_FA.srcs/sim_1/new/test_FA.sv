`timescale 1ns / 1ps


module test_FA;
logic a,b,cin, sum ,carry;


// inctace 
HA ha (
.a(a),
.b(b),
.sum(sum),
.carry(carry)


);

FA fa(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.carry(carry)
);


initial begin

 // Display header
$display("Time\t a b  cin sum, carry");

a = 0; b = 0; cin=0; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t  %b\t  %b %b", $time, a, b, sum ,carry);
#3
a = 1; b = 0; cin=0; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t  %b\t  %b %b", $time, a, b, sum ,carry);
#3
a = 0; b = 1; cin=0; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t  %b\t  %b %b", $time, a, b, sum ,carry);
#3
a = 0; b = 0; cin=1; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t  %b\t  %b %b", $time, a, b, sum ,carry);
#3
a = 1; b = 1; cin=0; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t  %b\t  %b %b", $time, a, b, sum ,carry);
#3
a = 1; b = 0; cin=1; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t  %b\t  %b %b", $time, a, b, sum ,carry);
#3
a = 0; b = 1; cin=1; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t  %b\t  %b %b", $time, a, b, sum ,carry);
#3
a = 1; b = 1; cin=0; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t  %b\t  %b %b", $time, a, b, sum ,carry);
#3
a = 1; b = 1; cin=1; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t  %b\t  %b %b", $time, a, b, sum ,carry);


$finish;
end 
endmodule