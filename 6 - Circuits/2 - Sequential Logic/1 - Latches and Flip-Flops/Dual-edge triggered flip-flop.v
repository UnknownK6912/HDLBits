module top_module (
    input clk,
    input d,
    output q
);

    reg res1, res2;
    
    always @(posedge clk) begin
        res1 <= d ^ res2;
    end
    
    always @(negedge clk) begin
        res2 <= d ^ res1;
    end
    
    assign q = res1 ^ res2;
    
endmodule
