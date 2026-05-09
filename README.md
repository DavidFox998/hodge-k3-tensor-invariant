1  # K3 Surface Tensor Invariant

Verifies the Hodge Conjecture 
for CM K3 surfaces with 
discriminant d ≤ 163 by testing 
the tensor invariant bound Z ≤ 20.

### **Result**
6 cases PASS, 3 cases FAIL 
with bound Z ≤ 20.

**PASS:** d = 3, 4, 7, 8, 11, 19 
with Z = 2, 2, 4, 4, 6, 10
**FAIL:** d = 43, 67, 163 
with Z = 22, 34, 82

The bound Z ≤ 20 fails for large 
discriminant CM fields.

![SageCell Output](output.jpg)
### **Run it online**
1. **Get the code**: [`cm_k3.sage`](./cm_k3.sage?raw=1)

[Run on SageMathCell](https://sagecell.sagemath.org/)
