module top_module (
    input [7:0] in,
    output parity); 

	wire parity_bit;
    
    assign parity_bit = ^ in;
    assign parity = {in, parity_bit};
    
endmodule
