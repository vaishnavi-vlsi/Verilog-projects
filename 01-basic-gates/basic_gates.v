module basic_gates (
    input a,
    input b,
    output and_gate,
    output or_gate,
    output not_gate_a,
    output xor_gate
);
    assign and_gate   = a & b;
    assign or_gate    = a | b;
    assign not_gate_a = ~a;
    assign xor_gate   = a ^ b;
endmodule