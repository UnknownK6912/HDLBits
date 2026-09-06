module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);

    reg dff_out1, dff_out2, dff_out3;
    
    always @(posedge clk) begin
        if (resetn == 1'b0) begin
            dff_out1 <= 0;
            dff_out2 <= 0;
            dff_out3 <= 0;
            out <= 0;
        end
        else
            begin
                dff_out1 <= in;
                dff_out2 <= dff_out1;
                dff_out3 <= dff_out2;
                out <= dff_out3;
            end
    end
    
endmodule
