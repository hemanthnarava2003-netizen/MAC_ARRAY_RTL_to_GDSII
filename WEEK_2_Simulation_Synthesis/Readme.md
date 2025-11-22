## ✅ MAC Array Output Table (4 Accumulation Cycles)

### **Input Values**

| Index | a (decimal) | b (decimal) | Product (a × b) |
|-------|-------------|-------------|------------------|
| 0     | 3           | 4           | **+12**          |
| 1     | -2          | 5           | **-10**          |
| 2     | 7           | -1          | **-7**           |
| 3     | 1           | 1           | **+1**           |

---

### **📘 Expected Output After Each Cycle**

| Cycle (after posedge clk) | y0 | y1  | y2  | y3 |
|----------------------------|----|-----|-----|-----|
| 0 (after reset)            | 0  | 0   | 0   | 0   |
| 1st cycle                  | 12 | -10 | -7  | 1   |
| 2nd cycle                  | 24 | -20 | -14 | 2   |
| 3rd cycle                  | 36 | -30 | -21 | 3   |
| 4th cycle                  | 48 | -40 | -28 | 4   |

---

### 🎯 **Final Output After 4 Cycles**

| Output | Final Value |
|--------|-------------|
| **y0** | **48**      |
| **y1** | **-40**     |
| **y2** | **-28**     |
| **y3** | **4**       |

---

### ⭐ Summary

- The MAC array performs:  
  \[
  y = y + (a \times b)
  \]  
  on **every clock cycle** when `en = 1`.

- With fixed inputs and **4 accumulation cycles**, each column’s output increases exactly by its product value each cycle.

- The results confirm correct sequential accumulation behavior.


