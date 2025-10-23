//module dflipflop (
    //input clk,
    //input d,
    //output q);
    
    //always @(posedge clk) begin
    //    q <= d;
  //  end
//endmodule

module top_module (
    input clk,
    input j,
    input k,
    output Q);
    
    //reg jk_out;
    
    //dflipflop dff1(.clk(clk),
      //             .d(),
        //           .q(Q)
          //        );
    always @(posedge clk) begin
        case({j,k})
            {1'b0,1'b0}: Q <= Q;
            {1'b0,1'b1}: Q <= 0;
            {1'b1,1'b0}: Q <= 1;
            {1'b1,1'b1}: Q <= ~Q;
        endcase
    end
                       
endmodule
