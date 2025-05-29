// 4-bit Up/Down Counter with active low reset

module up_down_counter (
    input  wire        clk,
    input  wire        rst_n,   // Active low reset
    input  wire        up,      // 1: count up, 0: count down
    output reg  [3:0]  count
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            count <= 4'b0000;
        else if (up)
            count <= count + 1;
        else
            count <= count - 1;
    end
endmodule