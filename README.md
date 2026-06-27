# 🚀 MAC Array RTL-to-GDSII ASIC Design Flow

This repository documents my complete **RTL-to-GDSII implementation** of a parameterized **Multiply-Accumulate (MAC) Array** using industry-standard ASIC design tools.

The objective of this project is to understand and implement the complete digital ASIC design flow, starting from RTL design through synthesis, physical design, timing analysis, and finally GDSII generation.

---

# 📌 Project Objective

Design and implement a scalable **4-Channel MAC Array** using Verilog HDL and perform the complete ASIC implementation flow.

The project includes:

- RTL Design
- Functional Verification
- Logic Synthesis
- Physical Design
- Static Timing Analysis
- GDSII Generation

---

# 🛠️ ASIC Design Flow

```
RTL Design (Verilog)
        │
        ▼
RTL Simulation (ModelSim/QuestaSim)
        │
        ▼
Logic Synthesis (Yosys)
        │
        ▼
ASIC Logic Synthesis (Cadence Genus)
        │
        ▼
Floorplanning (Cadence Innovus)
        │
        ▼
Placement
        │
        ▼
Clock Tree Synthesis (CTS)
        │
        ▼
Routing
        │
        ▼
Static Timing Analysis (STA)
        │
        ▼
GDSII Generation
```

---

# 📂 Repository Structure

```
MAC_ARRAY_RTL_to_GDSII
│
├── WEEK_1_Tools_Installation
│
├── WEEK_2_Simulation_Synthesis
│
├── WEEK_3_Cadence_Genus_Synthesis
│
├── WEEK_4_Cadence_Innovus_PnR
│
├── WEEK_5_Static_Timing_Analysis
│
└── WEEK_6_GDSII_Generation
```

---

# 🧰 Toolchain & Project Status

| Stage | Tool | Status |
|--------|------|--------|
| RTL Design | Verilog HDL | ✅ Completed |
| RTL Simulation | ModelSim / QuestaSim | ✅ Completed |
| Open-Source Logic Synthesis | Yosys | ✅ Completed |
| ASIC Logic Synthesis | Cadence Genus 20.1 | ✅ Completed |
| Floorplanning | Cadence Innovus | 🔄 In Progress |
| Placement | Cadence Innovus | ⏳ Pending |
| Clock Tree Synthesis | Cadence Innovus | ⏳ Pending |
| Routing | Cadence Innovus | ⏳ Pending |
| Static Timing Analysis | Innovus / Tempus | ⏳ Pending |
| GDSII Generation | Cadence Innovus | ⏳ Pending |

---

# 🎯 Features

- Parameterized Verilog RTL
- 4-Channel MAC Architecture
- Sequential Multiply-Accumulate Operation
- Gate-Level Netlist Generation
- Timing Analysis
- Area Analysis
- Power Analysis
- ASIC Physical Design Flow

---

# 📊 Current Progress

- ✅ Tool Installation
- ✅ RTL Coding
- ✅ RTL Simulation
- ✅ Yosys Synthesis
- ✅ Cadence Genus Synthesis
- 🔄 Cadence Innovus Physical Design
- ⏳ Static Timing Analysis
- ⏳ GDSII Generation

---

# 📚 Learning Outcomes

Through this project I gained hands-on experience in:

- Verilog RTL Design
- Digital Logic Design
- ASIC Synthesis Flow
- Cadence Genus
- Technology Mapping
- Timing Constraints (SDC)
- Timing Analysis
- Area Optimization
- Power Estimation
- Physical Design Flow
- ASIC Backend Design

---

# 📌 Author

**Hemanth Narava**

Electronics and Communication Engineering

Aspiring VLSI Design Engineer

RTL Design • ASIC Design • Physical Design • Digital IC Design

---
