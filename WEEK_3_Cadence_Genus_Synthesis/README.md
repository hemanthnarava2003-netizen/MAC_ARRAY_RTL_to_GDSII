# 🧠 Week 3 – Cadence Genus RTL Synthesis

## 📌 Objective

The objective of this phase is to synthesize the RTL description of the MAC (Multiply-Accumulate) Array into a technology-mapped gate-level netlist using **Cadence Genus Synthesis Solution**. During synthesis, timing constraints are applied, logic is optimized, and reports for timing, area, and power are generated.

---

## 🛠️ Tool Used

- **Cadence Genus 20.11**
- Technology Library: GSCLib 45nm
- Language: Verilog HDL
- Scripting: TCL
- Constraint Format: SDC

---

## 📂 Project Files

| File | Description |
|------|-------------|
| `MAC.v` | RTL design of MAC Array |
| `genus.tcl` | TCL script used to automate synthesis |
| `mac_array.sdc` | Timing constraints |
| `synthesized_netlist.v` | Gate-level synthesized netlist |
| `timing.rpt` | Timing analysis report |
| `area.rpt` | Area utilization report |
| `power.rpt` | Power estimation report |

---

# 🚀 Synthesis Flow

### Step 1 – Read Technology Library

```tcl
set_db library typical.lib
```

---

### Step 2 – Read RTL

```tcl
read_hdl MAC.v
```

---

### Step 3 – Elaborate Design

```tcl
elaborate mac_array
```

---

### Step 4 – Design Checks

```tcl
check_design
check_timing
```

---

### Step 5 – Generic Synthesis

```tcl
synthesize -to_generic
```

---

### Step 6 – Technology Mapping

```tcl
synthesize -to_mapped
```

---

### Step 7 – Generate Reports

```tcl
report_timing
report_area
report_power
```

---

### Step 8 – Export Netlist

```tcl
write_hdl
```

---

# 📊 Generated Reports

✅ Timing Report

- Setup Timing Analysis
- Slack Calculation
- Critical Path Identification

---

✅ Area Report

- Cell Utilization
- Total Standard Cell Area

---

✅ Power Report

- Internal Power
- Switching Power
- Leakage Power

---

# 📷 Results
✔ Successful RTL Elaboration

✔ Technology Mapping Completed

✔ Timing Met

✔ Area Report Generated

✔ Power Report Generated

✔ Gate-Level Netlist Generated

---


# ✅ Outputs Generated

- Technology Mapped Netlist
- Timing Report
- Area Report
- Power Report
- SDC Constraints
- Genus Schematic

---

# 📌 Summary

The RTL design of the MAC Array was successfully synthesized using Cadence Genus. Technology mapping was completed using the 45nm standard cell library, and timing, area, and power reports were generated successfully. The synthesized netlist and design constraints are now ready for the next phase of the ASIC implementation flow using **Cadence Innovus**.

---

## 📚 Learning Outcomes

- RTL synthesis using Cadence Genus
- Technology mapping to a standard cell library
- Applying timing constraints with SDC
- Generating timing, area, and power reports
- Exporting a gate-level netlist for physical design

---
