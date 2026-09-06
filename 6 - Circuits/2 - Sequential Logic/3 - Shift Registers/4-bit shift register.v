module top_module(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q);
    
    reg  [3:0] intermediate;
    
    always @(posedge clk, posedge areset) begin
        if (areset == 1'b1)
            q <= 0;
        else begin
            if (load)
                q <= data;
            else begin
                if (ena) 
                    q <= q[3:1];
            end
        end
    end
                
                

endmodule
