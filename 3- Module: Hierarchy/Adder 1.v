module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] a1, a2, b1, b2, w1, w2;
    wire w3;

    assign a1 = a[15:0];
    assign b1 = b[15:0];
    assign a2 = a[31:16];
    assign b2 = b[31:16];
    
    add16 adder1(.a(a1),
    	.b(b1),
                 .cin(1'b0),
                 .sum(w1),
                 .cout(w3)
                 );
             
    add16 adder2(.a(a2),
                 .b(b2),
                 .cin(w3),
                 .sum(w2)
                 );

    assign sum = {w2, w1};           
                 
endmodule
