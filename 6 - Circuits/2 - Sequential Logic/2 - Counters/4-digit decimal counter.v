module bcd_counter (
    input clk,
    input reset,
    input ena,
    output [3:0] q);

    reg [3:0] counter;
    
    always @(posedge clk) begin
        if (reset)
            counter <= 0;
        else if (ena) begin
            if (counter == 9)
                counter <= 0;
        	else
                counter = counter + 1;
        end
    end
    
    assign q = counter;
    
endmodule

module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);
    
    assign ena = {q[11:8] == 4'd9 && q[7:4] == 4'd9 && q[3:0] == 4'd9, q[7:4] == 4'd9 && q[3:0] == 4'd9, q[3:0] == 4'd9};
    
    bcd_counter counter1(.clk(clk),
                         .reset(reset),
                         .ena(1),
                         .q(q[3:0])
                        );
    
    bcd_counter counter2(.clk(clk),
                         .reset(reset),
                         .ena(ena[1]),
                         .q(q[7:4])
                        );
    
    bcd_counter counter3(.clk(clk),
                         .reset(reset),
                         .ena(ena[2]),
                         .q(q[11:8])
                        );
    
    bcd_counter counter4(.clk(clk),
                         .reset(reset),
                         .ena(ena[3]),
                         .q(q[15:12])
                        );
   
    
    
endmodule
