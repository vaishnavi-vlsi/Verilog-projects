`timescale 1ns / 1ps

module basic_gates_tb;
    reg a;
    reg b;
    wire and_gate;
    wire or_gate;
    wire not_gate_a;
    wire xor_gate;

    basic_gates uut (
        .a(a), 
        .b(b), 
        .and_gate(and_gate), 
        .or_gate(or_gate), 
        .not_gate_a(not_gate_a), 
        .xor_gate(xor_gate)
    );

    initial begin
        $monitor("Time=%0t | a=%b b=%b | AND=%b OR=%b NOT(a)=%b XOR=%b", 
                 $time, a, b, and_gate, or_gate, not_gate_a, xor_gate);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $finish;
    end
endmodule