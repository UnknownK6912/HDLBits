module top_module( 
    input [254:0] in,
    output [7:0] out );

    reg [7:0] counter;
    
    integer i;
    always @(in) begin
        counter = 0;
        for (i=0; i<255; i=i+1) begin
            counter = counter + in[254-i];
        end
    out = counter;
    end
endmodule
