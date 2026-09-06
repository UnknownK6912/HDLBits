module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);

    reg [3:0] counter;
    
    always @(posedge clk) begin
        if (reset)
            counter <= 0;
        else
            if (slowena == 0)
            counter <= counter;
            else
                if (counter == 9)
                     counter <= 0;
        		else
                	counter <= counter + 1;
    end
    
    assign q = counter;
    
endmodule
