module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );

    integer i;
    
    always @(*) begin       
    	i = sel;
    	out = in[i];
    end
    
endmodule
