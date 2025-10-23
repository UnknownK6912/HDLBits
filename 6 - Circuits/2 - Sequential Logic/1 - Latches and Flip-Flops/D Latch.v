module top_module (
    input d, 
    input ena,
    output q);
    
    always @(ena) begin
        if (ena == 1'b1)
        	q <= d;
        else
            q <= q;
    end

endmodule
