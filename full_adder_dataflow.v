module full_adder_dataflow (
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
);

    // Dataflow modeling using assign statements
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);

endmodule
