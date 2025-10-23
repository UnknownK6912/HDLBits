module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    
    reg [7:0] ff_out1, ff_out2;
    
    always @(posedge clk) begin
        ff_out1 <= in;
    end
    always @(posedge clk) begin
        ff_out2 <= ff_out1;
    end
    
    assign pedge = ff_out1 & ~ff_out2;

endmodule
