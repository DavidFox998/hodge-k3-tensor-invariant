# K3 Surface Tensor Invariant Verification

Verifies the Hodge Conjecture for all 9 CM K3 surfaces with discriminant d ≤ 163 by checking the tensor invariant bound Z ≤ 20.

### **Result**
6 cases PASS, 3 cases FAIL with bound Z ≤ 20.

**PASS:** d = 3, 4, 7, 8, 11, 19 with Z = 2, 2, 4, 4, 6, 10 
**FAIL:** d = 43, 67, 163 with Z = 22, 34, 82

The bound fails for large discriminant CM fields.

![SageCell Output](output.png)

### **Run it online**
1. Go to [SageMathCell](https://sagecell.sagemath.org/)
2. Paste the contents of `verify_k3.sage`
3. Hit Evaluate

[[Run on SageMathCell](https://sagecell.sagemath.org/static/icons/sagemathbadge.svg)](https://sagecell.sagemath.org/)

### **Run locally**
```bash
sage verify_k3.sage
