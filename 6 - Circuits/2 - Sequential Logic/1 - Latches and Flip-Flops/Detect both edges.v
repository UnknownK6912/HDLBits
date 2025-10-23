module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    
    wire [7:0] pedge, nedge;
    reg [7:0] ff_out1, ff_out2, ff_out3, ff_out4;
    
    always @(posedge clk) begin
        ff_out1 <= in;
    end

    always @(posedge clk) begin
        ff_out2 <= ff_out1;
    end
    
    assign anyedge = ff_out1 ^ ff_out2;
   
endmodule
