module dflipflop (
    input clk,
    input d,
    output reg q, q_n );//

    always @(posedge clk) begin
        q <= d;
        q_n <= ~d;
    end
endmodule

module top_module (
    input clk,
    input x,
    output z
); 
  
    reg q1, q2, q3;
    
    always @(posedge clk) begin
        q1 <= (q1 ^ x);
        q2 <= (x & ~q2);
        q3 <= (x | ~q3);
        end
    assign z = ~(q1 | q2 | q3);
    
endmodule
