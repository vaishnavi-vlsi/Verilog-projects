`timescale 1ns / 1ps

module full_adder_tb;

    // Testbench Signals
    reg  a;
    reg  b;
    reg  cin;
    wire sum;
    wire cout;

    // Instantiate Design Under Test (DUT)
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // VCD file creation for waveforms viewer
        $dumpfile("full_adder.vcd");
        $dumpvars(0, full_adder_tb);

        // Print header for Console Output
        $display("=======================================");
        $display("   FULL ADDER TESTBENCH SIMULATION     ");
        $display("=======================================");
        $display("Time\t A \t B \t Cin | Sum \t Cout");
        $display("---------------------------------------");

        // Apply all 8 input combinations (000 to 111)
        a = 0; b = 0; cin = 0; #10;
        $display("%0t\t %b \t %b \t %b   |  %b  \t  %b", $time, a, b, cin, sum, cout);

        a = 0; b = 0; cin = 1; #10;
        $display("%0t\t %b \t %b \t %b   |  %b  \t  %b", $time, a, b, cin, sum, cout);

        a = 0; b = 1; cin = 0; #10;
        $display("%0t\t %b \t %b \t %b   |  %b  \t  %b", $time, a, b, cin, sum, cout);

        a = 0; b = 1; cin = 1; #10;
        $display("%0t\t %b \t %b \t %b   |  %b  \t  %b", $time, a, b, cin, sum, cout);

        a = 1; b = 0; cin = 0; #10;
        $display("%0t\t %b \t %b \t %b   |  %b  \t  %b", $time, a, b, cin, sum, cout);

        a = 1; b = 0; cin = 1; #10;
        $display("%0t\t %b \t %b \t %b   |  %b  \t  %b", $time, a, b, cin, sum, cout);

        a = 1; b = 1; cin = 0; #10;
        $display("%0t\t %b \t %b \t %b   |  %b  \t  %b", $time, a, b, cin, sum, cout);

        a = 1; b = 1; cin = 1; #10;
        $display("%0t\t %b \t %b \t %b   |  %b  \t  %b", $time, a, b, cin, sum, cout);

        $display("=======================================");
        $finish;
    end

endmodule