`timescale 1ns / 1ps
module test_andGate;
logic a, b, c,d;
logic f;

andGate dut (
    .a(a),
     .b(b),  
    .c(c),
    .d(d),
    .f(f)  
);
initial begin

// Display header
$display("Time\t a b c d f");

a = 0; b = 0;  c = 0; d = 0; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 0; b = 0;  c = 0; d = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 0; b = 0;  c = 1; d = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 0; b = 0;  c = 1; d = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 0; b = 1;  c = 0; d = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 0; b = 1;  c = 0; d = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 0; b = 1;  c = 1; d = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 0; b = 1;  c = 1; d = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 1; b = 0;  c = 0; d = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 1; b = 0;  c = 0; d = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 1; b = 0;  c = 1; d = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 1; b = 0;  c = 1; d = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 1; b = 1;  c = 0; d = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 1; b = 1;  c = 0; d = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 1; b = 1;  c = 1; d = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

a = 1; b = 1;  c = 1; d = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d,f);

// End simulation
// End simulation

$finish;

end
endmodule
