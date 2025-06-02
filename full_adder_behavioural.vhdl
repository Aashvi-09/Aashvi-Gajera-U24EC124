module full_adder_behavioral (
    input wire a,
    input wire b,
    input wire cin,
    output reg sum,
    output reg cout
);

    always @ (a or b or cin) begin
        case ({a, b, cin})
            3'b000: begin sum = 0; cout = 0; end
            3'b001: begin sum = 1; cout = 0; end
            3'b010: begin sum = 1; cout = 0; end
            3'b011: begin sum = 0; cout = 1; end
            3'b100: begin sum = 1; cout = 0; end
            3'b101: begin sum = 0; cout = 1; end
            3'b110: begin sum = 0; cout = 1; end
            3'b111: begin sum = 1; cout = 1; end
        endcase
    end

endmodule
