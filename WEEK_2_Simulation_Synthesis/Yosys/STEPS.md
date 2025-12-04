# 🔧 Yosys Synthesis Implementation Guide

## 🚀 Quick Start Steps

### Step 1: Launch Yosys
```bash
yosys
```
<img width="1072" height="301" alt="Screenshot 2025-11-27 115411" src="https://github.com/user-attachments/assets/189896ef-dead-4cca-9aa7-0e4b042f82e9" />

### Step 2: Module Reading / Load Design
``` bash
read_run_synth.ys
```
<img width="1167" height="306" alt="Screenshot 2025-11-27 115442" src="https://github.com/user-attachments/assets/e183a4fa-cd33-43bd-86ab-b36668b79f86" />

### Step 3: Synthesize Logic
```bash
synth
```
<img width="916" height="760" alt="Screenshot 2025-11-27 114745" src="https://github.com/user-attachments/assets/86793d8b-7520-4835-9d27-476642a4b675" />

### Step 4: Generated Netlist
```bash
write_verilog and_gate_netlist.v
```
<img width="940" height="387" alt="Screenshot 2025-12-04 224907" src="https://github.com/user-attachments/assets/858f8ae1-d3ca-4d87-9110-e82763279727" />

