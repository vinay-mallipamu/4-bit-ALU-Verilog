`timescale 1ns/1ps

module ALU_tb;

    reg [3:0] A, B;
    reg [1:0] Sel;
    wire [3:0] Y;
    wire Carry;

    // Instantiate ALU
    ALU_4bit uut (
        .A(A),
        .B(B),
        .Sel(Sel),
        .Y(Y),
        .Carry(Carry)
    );

    initial begin
        $display("A    B    Sel   |   Y    Carry");
        $monitor("%b  %b  %b   |   %b   %b", A, B, Sel, Y, Carry);

        // Test 1: ADD
        A = 4'b0101; B = 4'b0011; Sel = 2'b00;
        #10;

        // Test 2: SUB
        Sel = 2'b01;
        #10;

        // Test 3: AND
        Sel = 2'b10;
        #10;

        // Test 4: OR
        Sel = 2'b11;
        #10;

        // Extra test cases
        A = 4'b1010; B = 4'b0101; Sel = 2'b00;
        #10;

        Sel = 2'b01;
        #10;

        Sel = 2'b10;
        #10;

        Sel = 2'b11;
        #10;

        $stop;
    end

endmodule`timescale 1ns/1ps

module ALU_tb;

    reg [3:0] A, B;
    reg [1:0] Sel;
    wire [3:0] Y;
    wire Carry;

    // Instantiate ALU
    ALU_4bit uut (
        .A(A),
        .B(B),
        .Sel(Sel),
        .Y(Y),
        .Carry(Carry)
    );

    initial begin
        $display("A    B    Sel   |   Y    Carry");
        $monitor("%b  %b  %b   |   %b   %b", A, B, Sel, Y, Carry);

        // Test 1: ADD
        A = 4'b0101; B = 4'b0011; Sel = 2'b00;
        #10;

        // Test 2: SUB
        Sel = 2'b01;
        #10;

        // Test 3: AND
        Sel = 2'b10;
        #10;

        // Test 4: OR
        Sel = 2'b11;
        #10;

        // Extra test cases
        A = 4'b1010; B = 4'b0101; Sel = 2'b00;
        #10;

        Sel = 2'b01;
        #10;

        Sel = 2'b10;
        #10;

        Sel = 2'b11;
        #10;

        $stop;
    end

endmodule
