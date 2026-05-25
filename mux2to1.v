(* top *)
module mux2to1(
    (* iopad_external_pin *) input i0,     
    (* iopad_external_pin *) input i1,     
    (* iopad_external_pin *) input sel,    
    (* iopad_external_pin *) output y,      
    (* iopad_external_pin *) output y_en    
);

    // Explicit logic: Output is only i0 if sel is exactly 0
    // and only i1 if sel is exactly 1.
    assign y = (sel == 1'b0) ? i0 : i1;

    // Ensure Pin 9 is ALWAYS an output
    assign y_en = 1'b1; 

endmodule