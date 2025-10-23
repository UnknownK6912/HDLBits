// Mt2015 muxdff
module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    
    always @(posedge clk) begin
        case(L)
            1'b0: Q <= q_in;
            1'b1: Q <= r_in;
        endcase
    end   

endmodule

// Exams/2014 q4a
module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    
    always @(posedge clk) begin
        case(E)
            1'b0: begin
                  case(L)
                      1'b0: Q <= Q;
                      1'b1: Q <= R;
                  endcase
                  end
            1'b1: begin
                  case(L)
                      1'b0: Q <= w;
                      1'b1: Q <= R;
                  endcase
                  end
        endcase
    end
        
        

endmodule
