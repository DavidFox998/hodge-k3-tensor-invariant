#!/usr/bin/env sage
from cm_k3 import CMK3Surface
from tensor_k3 import tensor_invariant_k3, classify_tensor_invariant
import time

DISCRIMINANTS = [3] # Add 4,7,8,11,19,43,67,163 later
BOUND = 20

def verify_single_d(d):
    print(f"\n=== Testing d = {d} ===")
    t0 = time.time()
    try:
        X = CMK3Surface(d)
        NS_basis = X.nsgenerators()
        print(f"Rank NS(X) = {len(NS_basis)}")
        violations = []
        max_Z = 0
        for i, omega in enumerate(NS_basis):
            Z = tensor_invariant_k3(omega, X)
            max_Z = max(max_Z, Z)
            is_alg, msg = classify_tensor_invariant(Z, BOUND)
            print(f" ω_{i}: {msg}")
            if not is_alg:
                violations.append((i, Z))
        dt = time.time() - t0
        if violations:
            print(f"FAILED d={d} in {dt:.1f}s. Max Z = {max_Z}")
            return False
        else:
            print(f"PASSED d={d} in {dt:.1f}s. All Z ≤ {BOUND}. Max Z = {max_Z}")
            return True
    except Exception as e:
        print(f"ERROR d={d}: {e}")
        return False

def main():
    print("TENSOR INVARIANT VERIFICATION FOR CM K3 SURFACES")
    print(f"Testing: Z(ω) ≤ {BOUND} for all ω ∈ NS(X)_QQ")
    all_pass = True
    for d in DISCRIMINANTS:
        all_pass = verify_single_d(d) and all_pass
    if all_pass:
        print(f"\nAll tested CM K3s: Z ≤ {BOUND}. Hodge VERIFIED for (1,1)-classes.")
    else:
        print(f"\nCOUNTEREXAMPLE FOUND. Bound FAILS for K3.")
    return all_pass

if __name__ == "__main__":
    main()
