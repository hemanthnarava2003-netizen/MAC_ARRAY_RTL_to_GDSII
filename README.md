# ⚙️ MAC Array RTL-to-GDSII Implementation Flow (Mentor Graphics)

This repository documents my **learning and implementation journey** of a **Multiply-Accumulate (MAC) array** through a complete **RTL-to-GDSII design flow**, using **Mentor Graphics EDA tools** and industry-standard ASIC methodologies.  
The project focuses on understanding the digital backend design process for compute architectures, with emphasis on synthesis, floorplanning, placement, routing, and verification.

---

## 🧩 Objective

To design, verify, and implement a **parameterized MAC (Multiply-Accumulate) array** from **RTL to GDSII**, following professional ASIC design practices using **Mentor Graphics** tools.

### 🎯 Project Goals:
- Develop a **scalable MAC array architecture** using Verilog RTL.
- Perform **functional verification**, **logic synthesis**, and **timing closure**.
- Execute **physical design flow** (floorplanning → placement → routing → signoff).
- Generate **GDSII output** suitable for tapeout-level validation.

---

## 🛠️ Toolchain & Verification Status

| 🧰 **Tool** | ⚙️ **Purpose** | 📈 **Status** |
|-------------|----------------|---------------|
| 🧠 **ModelSim / QuestaSim** | RTL Simulation and Functional Verification | ✅ Verified |
| 🧮 **Precision RTL** | Logic Synthesis and Netlist Generation | ✅ Verified |
| 🔧 **S-Edit** | Schematic Capture and Hierarchical Design | ✅ Verified |
| ⚡ **T-Spice** | Circuit Simulation & Post-Layout Analysis | ✅ Verified |
| 🎨 **L-Edit** | Layout Design, DRC & LVS Checks | ✅ Verified |
| 🧾 **T-DRC / T-LVS** | Design Rule and Layout vs. Schematic Verification | ✅ Verified |
| 📐 **L-Edit Extract** | Parasitic Extraction & Final GDSII Export | ✅ Verified |

---
