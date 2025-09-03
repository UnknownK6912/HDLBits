module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    integer i;
    integer count;
    always @(in) begin
        count = 0;
        for (i=0; i<3; i=i+1) begin
            count = count + in[i];
        end
    out = count;
    end
    
endmodule
