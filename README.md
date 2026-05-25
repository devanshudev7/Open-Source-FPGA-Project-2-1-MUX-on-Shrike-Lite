# Open-Source-FPGA-Project-2-1-MUX-on-Shrike-Lite

This repository contains the source code and hardware configuration for our submission for problem statement . 

It focuses on the fundamental design and implementation of a 2-to-1 Multiplexer (MUX) using the Shrike Lite FPGA development platform. 

The project provides a streamlined environment for mapping Verilog designs onto physical hardware.

It includes the logic for selecting between two input signals based on a single select line , along with functional simulation waveforms to verify timing relationships.

Key HighlightsHardware Mapping: Complete IO Planner configuration defining physical pin constraints for inputs and outputs.

Pull-up Configuration: Includes our hardware fix for erratic select line behavior.

We modified the pin constraints away from a High-Z (High Impedance) state to utilize an internal pull-up, preventing the input from picking up environmental noise.

📄 Note: For full project details, hardware configurations, and screenshots, please refer to the attached shrike_mux_.pdf file.
