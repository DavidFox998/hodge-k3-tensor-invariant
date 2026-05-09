# "Tensor Invariant Verifies Hodge for CM K3 Surfaces

Paper 4 of the Hodge Measurement Program

## Goal
Extend Lemma 7.6 from Paper 3 to K3 surfaces with CM. Test: `Z(ω) ≤ 20` for all `ω ∈ NS(X)_QQ`.

## Status
- **d=3**: Fermat quartic `x0^4+x1^4+x2^4+x3^4=0`. CM by `QQ(sqrt(-3))`. **PASS**
- **d=4,7,...**: Not implemented yet.

## One-Command Verification
```bash
sage verify_k3.sage
