module top_module (
    input c,
    input d,
    input a,
    input b,
    output [3:0] mux_in,
    output f
); 

    assign mux_in = (c&d)?4'b1001:(c)?4'b0101:(d)?4'b0001:4'b0100;
    
    always @(*) begin
        case({a,b})
            {1'b0,1'b0}: f = mux_in[0];
            {1'b0,1'b1}: f = mux_in[1];
            {1'b1,1'b0}: f = mux_in[2];
            {1'b1,1'b1}: f = mux_in[3];
        endcase
    end
    
endmodule
