module top_module ( input [1:0] A, input [1:0] B, output z ); 

    wire wire1;
    wire wire2;
    
    assign wire1 = ~(A[1] ^ B[1]);
    assign wire2 = ~(A[0] ^ B[0]);
    assign z = wire1 & wire2;
    
endmodule
