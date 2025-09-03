module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
	
    wire [7:0] out_1;
    wire [7:0] out_2;
    
    assign out_1 = (a < b) ? a : b;
    assign out_2 = (out_1 < c) ? out_1 : c;
    assign min = (out_2 < d) ? out_2 : d;
    // assign intermediate_result1 = compare? true: false;

endmodule
