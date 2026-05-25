`timescale 1ns / 1ps

module tb_mux2to1;

    // 1. Declare signals
    reg i0;
    reg i1;
    reg sel;
    wire y;
    wire y_en;

    // 2. Instantiate the Unit Under Test (UUT)
    mux2to1 uut (
        .i0(i0), 
        .i1(i1), 
        .sel(sel), 
        .y(y),
        .y_en(y_en)
    );

    // 3. Stimulus process
    initial begin
        // REQUIRED for GTKWave: These lines create the waveform file
        $dumpfile("mux_sim.vcd");
        $dumpvars(0, tb_mux2to1);

        // Initialize Inputs
        i0 = 0; i1 = 0; sel = 0;
        #10;
        
        // Test Case 1: Select i0 (sel = 0)
        i0 = 1; i1 = 0; sel = 0; #10; 
        i0 = 0; i1 = 1; sel = 0; #10; 
        
        // Test Case 2: Select i1 (sel = 1)
        i0 = 1; i1 = 0; sel = 1; #10; 
        i0 = 0; i1 = 1; sel = 1; #10; 

        $display("Simulation complete successfully.");
        $finish;
    end
      
endmodule