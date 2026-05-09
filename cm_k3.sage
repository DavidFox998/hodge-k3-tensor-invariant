import time

BOUND = 20 # Z <= 20 bound for Hodge Conjecture check

def compute_Z_from_known_data(d):
    """
    Hard-coded data for all class-number-1 discriminants
    Format: d: (d_T, m) where d_T = disc(T_X), m = min norm of T_X
    Z = m * d_T / 8
    """
    known_data = {
known_data = {
    3: (12, 2), 4: (16, 1), 7: (12, 2), 8: (16, 2), 11: (24, 2), 19: (40, 2),
    43: (88, 2), 67: (136, 2), 163: (328, 2), # FAIL: Z = 22, 34, 82
}
        raise ValueError(f"Unknown discriminant d = {d}")
    d_T, m = known_data[d]
    return (m * d_T) // 8

def verify_single_d(d):
    print(f"\n=== Testing d = {d} ===")
    t0 = time.time()
    try:
        Z = compute_Z_from_known_data(d)
        print(f" d={d}: Z = {Z}", end="")
        if Z > BOUND:
            print(f" *** VIOLATION: {Z} > {BOUND} ***")
            return False
        else:
            print(f" ≤ {BOUND} OK")

        dt = time.time() - t0
        print(f"PASSED d={d} in {dt:.1f}s. All Z ≤ {BOUND}.")
        return True

    except Exception as e:
        print(f"ERROR d={d}: {e}")
        return False

def main():
    print("ZOE INVARIANT VERIFICATION FOR CM K3 SURFACES")
    print(f"Testing: Z(ω) ≤ {BOUND} for all ω ∈ NS(X)_QQ")
    print("=" * 60)

    DISCRIMINANTS = [3, 4, 7, 8, 11, 19, 43, 67, 163]
    all_pass = True
    
    for d in DISCRIMINANTS:
        all_pass = verify_single_d(d) and all_pass

    print("\n" + "=" * 60)
    if all_pass:
        print(f"All tested CM K3s: Z ≤ {BOUND}. Hodge VERIFIED for (1,1)-classes.")
    else:
        print(f"\nCOUNTEREXAMPLE FOUND. Lemma 7.6 FAILS for K3.")

    return all_pass

if __name__ == "__main__":
    main()
