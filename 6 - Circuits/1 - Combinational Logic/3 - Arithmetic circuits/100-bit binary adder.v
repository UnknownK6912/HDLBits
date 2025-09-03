module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [100:0] sum );

    assign sum = a + b + cin;
    assign cout = sum[100];
    
    
endmodule
