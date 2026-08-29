# glam-bench-baselines

Baseline data for the [glam](https://github.com/bitshifter/glam-rs) gungraun
instruction-count benchmarks.

This repository is populated automatically by the `Update gungraun baselines`
workflow in glam-rs. It is not intended to be edited by hand.

## Contents

- `glam/gungraun/**` — callgrind baseline files (`.base@sse2`,
  `.base@scalar_math`, `.base@neon`).
- `Cargo.lock` — pinned dependency lockfile used when the baselines were
  generated.

## How baselines are tracked

Instruction counts depend on the exact Rust toolchain, target features, and
dependency resolution, so baselines are only tracked for:

- x86_64 Linux: `sse2` and `scalar_math`
- aarch64 Linux: `neon`

The glam `Bench` workflow checks out this repository and compares current
instruction counts against the saved baselines. The `Update gungraun baselines`
workflow regenerates them and pushes the results here.

Each baseline update commit references the glam-rs commit that produced it.
