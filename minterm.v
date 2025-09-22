module minterm (
    input A, B, C, D,
    output Y
);

assign Y = (~A & ~B & D) | (B & ~D) | (C & ~D); 

endmodule
