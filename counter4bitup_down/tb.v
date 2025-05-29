// Testbench for 4-bit Up/Down Counter

module tb_up_down_counter;
    reg clk, rst_n, up;
    wire [3:0] count;

    up_down_counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .up(up),
        .count(count)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("up_down_counter_tb.vcd");
        $dumpvars(0, tb_up_down_counter);

        // Initialize
        rst_n = 0; up = 1; #12;
        rst_n = 1;         // Release reset

        // Count up
        up = 1;
        repeat (10) @(posedge clk);

        // Count down
        up = 0;
        repeat (10) @(posedge clk);

        // Finish
        $finish;
    end

    initial begin
        $display("Time\tRST_N\tUP\tCOUNT");
        $monitor("%0t\t%b\t%b\t%0d", $time, rst_n, up, count);
    end
endmodule