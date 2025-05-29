// Testbench for 1-bit Full Adder

module tb_fa;
    reg a, b, cin;
    wire sum, cout;

    // Instantiate the full adder
    fa uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("fa_tb.vcd");
        $dumpvars(0, tb_fa);
        $display("A B CIN | SUM COUT");
        $display("------------------");
        a = 0; b = 0; cin = 0; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 0; b = 0; cin = 1; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 0; b = 1; cin = 0; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 0; b = 1; cin = 1; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 1; b = 0; cin = 0; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 1; b = 0; cin = 1; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 1; b = 1; cin = 0; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 1; b = 1; cin = 1; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        $finish;
    end
endmodule