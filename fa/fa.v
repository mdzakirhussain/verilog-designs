// 1-bit Full Adder using two Half Adders

module ha(
    input  wire a,
    input  wire b,
    output wire sum,
    output wire carry
);
    assign sum   = a ^ b;
    assign carry = a & b;
endmodule

module fa(
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire sum,
    output wire cout
);
    wire sum1, carry1, carry2;

    // First half adder
    ha ha1 (
        .a(a),
        .b(b),
        .sum(sum1),
        .carry(carry1)
    );

    // Second half adder
    ha ha2 (
        .a(sum1),
        .b(cin),
        .sum(sum),
        .carry(carry2)
    );

    assign cout = carry1 | carry2;
endmodule