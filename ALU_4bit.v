module ALU_4bit (
    input [3:0] A, B,
    input [1:0] Sel,
    output reg [3:0] Y,
    output reg Carry
);

    reg [4:0] temp;

    always @(*) begin
        case (Sel)
        
            2'b00: begin // ADD
                temp = A + B;
                Y = temp[3:0];
                Carry = temp[4];
            end

            2'b01: begin // SUB
                temp = A + (~B + 1);
                Y = temp[3:0];
                Carry = temp[4];
            end

            2'b10: begin // AND
                Y = A & B;
                Carry = 0;
            end

            2'b11: begin // OR
                Y = A | B;
                Carry = 0;
            end

        endcase
    end

endmodule
