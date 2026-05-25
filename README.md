# 🎛️ 2-to-1 Multiplexer (MUX) on Shrike Lite FPGA

> **This repository contains the source code and hardware configuration for our submission for 2-to-1 Multiplexer (MUX) on Shrike Lite FPGA.**

This project focuses on the fundamental design and implementation of a 2-to-1 Multiplexer (MUX) utilizing the **Shrike Lite FPGA** development platform. It provides a streamlined environment for mapping Verilog designs directly onto physical hardware, including the core logic for selecting between two input signals based on a single select line.

---

## ✨ Key Highlights

* **Complete Hardware Mapping:** Features a fully configured IO Planner that defines precise physical pin constraints for all inputs and outputs.
* **Simulation & Verification:** Includes functional simulation waveforms to thoroughly verify timing relationships and logic accuracy before hardware deployment.
* **Streamlined Workflow:** Offers a clear, optimized path for taking digital Verilog designs and bringing them to life on physical FPGA boards.

---

## 🛠️ Hardware Configuration & Signal Stability Fix

A critical part of our implementation involved addressing physical hardware inconsistencies. 

> **The Challenge:** We experienced erratic behavior on the select line due to floating inputs picking up environmental noise.
>
> **The Hardware Fix:** We updated the IO configuration to modify the pin constraints away from a **High-Z (High Impedance)** state. By actively utilizing the FPGA's **internal pull-up** configuration, we effectively stabilized the select line and eliminated random noise interference.

---

## 📄 Documentation & Resources

For full project details, in-depth hardware configurations, and visual screenshots of the implementation and waveforms, please refer to our complete documentation attached in this repository:

* 📎 **[`shrike_mux_.pdf`](./shrike_mux_.pdf)**
