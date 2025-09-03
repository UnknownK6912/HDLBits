module mod_a (input x, input y, output z);

    assign z = ((x^y) & x);
    
endmodule

module mod_b ( input x, input y, output z );

    assign z = ~(x^y); 
    
endmodule

wire wire1;
wire wire2;
wire wire3;
wire wire4;
wire wire5;
wire wire6;

module top_module (input x, input y, output z);

    mod_a IA1(.x(x),
              .y(y),
              .z(wire1)
             );
    mod_b IB1(.x(x),
              .y(y),
              .z(wire2)
             );
    mod_a IA2(.x(x),
              .y(y),
              .z(wire3)
             );
    mod_b IB2(.x(x),
              .y(y),
              .z(wire4)
             );    
    assign wire5 = wire1 | wire2;
    assign wire6 = wire3 & wire4;
    assign z = wire5 ^ wire6;
endmodule
