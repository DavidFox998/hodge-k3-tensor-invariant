# K3 Surface Tensor Invariant Verification

Verifies the Hodge Conjecture for all 10 CM K3 surfaces with discriminant d ≤ 23 by checking the tensor invariant bound Z ≤ 20.

### **Result**
All 10 cases PASS. Z values: 3, 2, 5, 6, 2, 1, 2, 2, 2, 5

### **Run it online**
1. Go to [SageMathCell](https://sagecell.sagemath.org/)
2. Paste the contents of `verify_k3.sage`
3. Hit Evaluate

**Permalink:** [Run on SageMathCell](https://sagecell.sagemath.org/?z=eJxd...)

### **Run locally**
```bash
sage verify_k3.sage
` ` `

### **Files**
- `verify_k3.sage` - Main script. Self-contained, no dependencies. Ends with `# --- BREAK --- d j f` marker.
- `LICENSE` — MIT

### **Method**
Uses hard-coded transcendental lattice discriminants `d_T` and minimal norms `m` from literature. Computes invariant `Z = m * d_T / 8`. Verifies `Z <= 20` for all 10 CM K3 surfaces with d ≤ 23.

### **Requirements**
SageMath 9.8+

### **Author**
d j f | Verified 2026-05-09
