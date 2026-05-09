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
### **Run it online Online**
1. **Get the code**: [cm_k3.sage](https://github.com/DavidFox998/hodge-k3-tensor-invariant/blob/main/cm_k3.sage) → tap `Raw` → copy
2. Go to [SageMathCell](https://sagecell.sagemath.org/)
3. Paste the code → Evaluate
[Run on SageMathCell](https://sagecell.sagemath.org/)
## Computational Verification

This repository disproves Lemma 7.6 for K3 surfaces. The script `cm_k3.sage` computes the ZOE invariant $Z = m \cdot d_T / 8$ for all 9 CM K3 surfaces with class number 1.

**Result:** Counterexamples found for $d = 43, 67, 163$:

![Computational Verification] (Computational_Verification.jpg)

The bound $Z(\omega) \leq 20$ fails. We obtain $Z = 22, 34, 82 > 20$. 

To reproduce: `sage cm_k3.sage` or paste into [SageMathCell](https://sagecell.sagemath.org/) with `Language: Python`.
