module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    
    reg [31:0] dff_out;
    
    always @(posedge clk) begin
        dff_out <= in;
        if (reset)
            out <= 0;
        else begin
            out <= out | (dff_out & ~in);
        end
    end
        
endmodule
