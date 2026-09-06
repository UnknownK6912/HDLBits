module top_module (
    input clk,
    input reset,
    output [3:0] q);

    reg [3:0] counter;
    
    always @(posedge clk) begin
        if (reset)
            counter <= 1;
        else
            if (counter == 10)
                counter <= 1;
        	else
                counter = counter + 1;
    end
    
    assign q = counter;
    
endmodule
