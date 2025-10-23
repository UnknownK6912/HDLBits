module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    
    always @(posedge clk) begin
        if (resetn == 1'b0)
            q <= 0;
        else
            case(byteena)
                2'b00: q <= q;
                2'b01: begin 
                       q[7:0] <= d[7:0];
                       q[15:8] <= q[15:8];
                       end
                2'b10: begin 
                       q[15:8] <= d[15:8];
                       q[7:0] <= q[7:0];
                       end
                2'b11: q <= d;
            endcase
    end

endmodule
