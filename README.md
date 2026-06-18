# WSe₂ Adhesion Engineering

First-principles cleavage energy and GSFE for 2H-WSe₂.
Part of the universal vdW adhesion framework (Ramey 2026).

## Motivation
Same row-4 chalcogen (Se) as NbSe₂, but tungsten makes WSe₂ a 
semiconductor rather than a metal. This is a controlled test of:

1. Whether the λ-saturation pattern (MoS₂ ≈ NbSe₂ ≈ 0.72-0.74 Å) 
   holds for a third TMD sandwich material.
2. Whether the λ = 1/κ identity — which held for graphite, hBN, 
   and MoS₂, but broke down for metallic NbSe₂ — is restored for 
   a semiconducting Se-based TMD. This isolates metallicity, not 
   chalcogen identity, as the deciding factor.

## Status
- Relaxation: complete (d₀ = 6.4503 Å, matches literature ~6.4-6.5 Å)
- Cleavage scan: running (41 points, c=50 Å)
- GSFE: planned
- Test 3 (charge density): planned

## Key parameters
- a = 3.28 Å, c = 30 Å (relax cell)
- Se-W-Se thickness = 3.4338 Å
- vdW gap = 3.0169 Å
- Pseudopotentials: W.pbe-spn-kjpaw_psl.1.0.0.UPF, 
  Se.pbe-dn-kjpaw_psl.1.0.0.UPF (PAW, PSLibrary 1.0.0)
