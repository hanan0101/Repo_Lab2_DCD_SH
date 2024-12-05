`timescale 1ns / 1ps



module tb_full; 
   
   
    logic a, b, cin, sum, carry;
    FULL_ADD FA(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
    initial begin
    
        a = 1'b0; b = 1'b0; cin = 1'b0; #5;        a = 1'b0; b = 1'b0; cin = 1'b1; #5;
        a = 1'b0; b = 1'b1; cin = 1'b0; #5;        a = 1'b0; b = 1'b1; cin = 1'b1; #5;
        a = 1'b1; b = 1'b0; cin = 1'b0; #5;        a = 1'b1; b = 1'b0; cin = 1'b1; #5;
        a = 1'b1; b = 1'b1; cin = 1'b0; #5;        a = 1'b1; b = 1'b1; cin = 1'b1; #5;
end

endmodule   

