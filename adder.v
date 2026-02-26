module adder(

    input A,
    input B,
    output Y,
    output C
    
    // Declare your A/B inputs
    // Declare Y output
    // Declare carry output
);
    assign Y = A ^ B;
    assign C = A & B;
    // Enter logic equation here

endmodule