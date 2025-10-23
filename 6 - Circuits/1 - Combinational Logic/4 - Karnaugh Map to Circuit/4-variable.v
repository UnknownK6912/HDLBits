// Kmap1
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    assign out = (~b & ~c) | (~a & ~d) | (b & c & d) | (a & c & d); 
    
endmodule

// Kmap2
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    assign out = a | (~b & c) | (b & ~c & ~d);
    
endmodule

// Kmap3
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    assign out = (~a & b & ~c & ~d) | (~a & b & c & d) | (~a & ~b & ~c & d) | (~a & ~b & c & ~d) | (a & b & ~c & d) | (a & b & c & ~d) | (a & ~b & ~c & ~d) | (a & ~b & c & d);
    
endmodule
