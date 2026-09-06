module muxdff (
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

module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //

muxdff muxdff1(.clk(KEY[0]),
               .w(KEY[3]),
               .R(SW[3]),
               .E(KEY[1]),
               .L(KEY[2]),
               .Q(LEDR[3])
               );

muxdff muxdff2(.clk(KEY[0]),
               .w(LEDR[3]),
               .R(SW[2]),
               .E(KEY[1]),
               .L(KEY[2]),
               .Q(LEDR[2])
               );

muxdff muxdff3(.clk(KEY[0]),
               .w(LEDR[2]),
               .R(SW[1]),
               .E(KEY[1]),
               .L(KEY[2]),
               .Q(LEDR[1])
               );

muxdff muxdff4(.clk(KEY[0]),
               .w(LEDR[1]),
               .R(SW[0]),
               .E(KEY[1]),
               .L(KEY[2]),
               .Q(LEDR[0])
               );

endmodule
