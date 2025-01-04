module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire [7:0] w1;
    wire [7:0] w2;
    wire [7:0] w3;
    
    my_dff8 dff1(.clk(clk),
                 .d(d),
                 .q(w1)
                );

    my_dff8 dff2(.clk(clk),
                 .d(w1),
                 .q(w2)
                );
    
    my_dff8 dff3(.clk(clk),
                 .d(w2),
                 .q(w3)
                );
    
    assign q = (sel == 2'b00) ? d :
               (sel == 2'b01) ? w1 :
               (sel == 2'b10) ? w2 :
               (sel == 2'b11) ? w3 : 8'b0;
    
endmodule
