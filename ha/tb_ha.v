// Testbench for half adder
module ha_tb;
    reg a, b;
    wire sum, carry;

    // Instantiate the half adder
    ha uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("ha_tb.vcd");
        $dumpvars(0, ha_tb);
        $display("A B | SUM CARRY");
        $display("--------------");
        a = 0; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);
        a = 0; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);
        a = 1; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);
        a = 1; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);
        $finish;
    end
endmodule