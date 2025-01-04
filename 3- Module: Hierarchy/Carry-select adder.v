module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] sum1, sum2;
    wire sel;
    
    add16 adder1(.a(a[15:0]),
                 .b(b[15:0]),
                 .cin(1'b0),
                 .cout(sel),
                 .sum(sum[15:0])
                 );
                 
    add16 adder2a(.a(a[31:16]),
				  .b(b[31:16]),
                  .cin(1'b0),
                  .cout(0),
                  .sum(sum1)
                  );
                  
	add16 adder2b(.a(a[31:16]),
				  .b(b[31:16]),
                  .cin(1'b1),
                  .cout(0),
                  .sum(sum2)
                  );
                  
    assign sum[31:16] = (sel == 0) ? sum1: sum2;         
                  
endmodule
