module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire [31:0] in2;
    wire w1;
    
    assign in2 = {32{sub}}^b;
    
    add16 adder1(.a(a[15:0]),
                 .b(in2[15:0]),
                 .cin(sub),
                 .sum(sum[15:0]),
                 .cout(w1)
                );
    
    add16 adder2(.a(a[31:16]),
                 .b(in2[31:16]),
                 .cin(w1),
                 .sum(sum[31:16]),
                 .cout(0)
                );
    
endmodule
