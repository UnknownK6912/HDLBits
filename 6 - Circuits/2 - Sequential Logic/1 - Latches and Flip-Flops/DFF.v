// Exams/m2014 q4b
module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output q);
    
    always @(posedge clk, posedge ar) begin
        if (ar == 1'b1)
            q <= 0;
        else
            q <= d;
    end

endmodule

// Exams/m2014 q4c
module top_module (
    input clk,
    input d, 
    input r,   // synchronous reset
    output q);
    
    always @(posedge clk) begin
        if ( r == 1'b1)
            q <= 0;
        else
            q <= d;
    end

endmodule
