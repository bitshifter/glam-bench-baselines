# aarch64 benchmarks

- glam-rs commit: `e9ca1eeff134dc36ff1aaaf070483389dc3147ef`
- rustc stable: `rustc 1.98.0 (88d9e12ae 2026-08-18)`
- rustc nightly: `rustc 1.100.0-nightly (0dfb098f3 2026-08-31)`
- valgrind: `valgrind-3.22.0`
- gungraun: `0.19.4`
- target: `aarch64-unknown-linux-gnu`
- deltas: native SIMD (SSE2 or NEON) minus scalar-math/core-simd instructions

| Benchmark | neon | scalar | coresimd | Δ scalar | Δ coresimd |
| --- | ---: | ---: | ---: | ---: | ---: |
| `affine3a_from_scale_rotation_translation` | 47 | 51 | 46 | -4 | +1 |
| `affine3a_inverse` | 50 | 73 | 51 | -23 | -1 |
| `affine3a_mul_affine3a` | 28 | 87 | 44 | -59 | -16 |
| `affine3a_transform_point3a` | 11 | 34 | 14 | -23 | -3 |
| `affine3a_transform_vector3a` | 10 | 31 | 14 | -21 | -4 |
| `mat2_determinant` | 12 | 11 | 11 | +1 | +1 |
| `mat2_inverse` | 15 | 18 | 15 | -3 | +0 |
| `mat2_mul_mat2` | 10 | 11 | 12 | -1 | -2 |
| `mat2_mul_transpose_vec2` | 14 | 14 | 14 | +0 | +0 |
| `mat2_mul_vec2` | 13 | 10 | 12 | +3 | +1 |
| `mat2_transpose` | 4 | 4 | 4 | +0 | +0 |
| `mat3_determinant` | 27 | 27 | 26 | +0 | +1 |
| `mat3_inverse` | 52 | 52 | 53 | +0 | -1 |
| `mat3_mul_mat3` | 63 | 63 | 62 | +0 | +1 |
| `mat3_mul_transpose_vec3` | 25 | 25 | 25 | +0 | +0 |
| `mat3_mul_vec3` | 21 | 21 | 21 | +0 | +0 |
| `mat3_transpose` | 11 | 11 | 11 | +0 | +0 |
| `mat3a_determinant` | 23 | 27 | 22 | -4 | +1 |
| `mat3a_from_quat` | 41 | 35 | 39 | +6 | +2 |
| `mat3a_inverse` | 44 | 70 | 41 | -26 | +3 |
| `mat3a_mul_mat3a` | 22 | 75 | 34 | -53 | -12 |
| `mat3a_mul_transpose_vec3a` | 26 | 25 | 18 | +1 | +8 |
| `mat3a_mul_vec3a` | 10 | 31 | 13 | -21 | -3 |
| `mat3a_transpose` | 13 | 13 | 14 | +0 | -1 |
| `mat4_determinant` | 50 | 48 | 56 | +2 | -6 |
| `mat4_from_quat` | 45 | 41 | 44 | +4 | +1 |
| `mat4_from_scale_rotation_translation` | 51 | 54 | 50 | -3 | +1 |
| `mat4_inverse` | 94 | 207 | 95 | -113 | -1 |
| `mat4_mul_mat4` | 35 | 46 | 35 | -11 | +0 |
| `mat4_mul_transpose_vec4` | 19 | 13 | 25 | +6 | -6 |
| `mat4_mul_vec4` | 11 | 15 | 12 | -4 | -1 |
| `mat4_transform_point3` | 14 | 25 | 14 | -11 | +0 |
| `mat4_transform_vector3` | 13 | 21 | 13 | -8 | +0 |
| `mat4_transpose` | 31 | 12 | 16 | +19 | +15 |
| `quat_dot` | 11 | 15 | 10 | -4 | +1 |
| `quat_from_axis_angle` | 72 | 64 | 69 | +8 | +3 |
| `quat_from_euler` | 229 | 229 | 217 | +0 | +12 |
| `quat_inverse` | 5 | 7 | 6 | -2 | -1 |
| `quat_lerp.negative_dot` | 22 | 30 | 26 | -8 | -4 |
| `quat_lerp.positive_dot` | 22 | 30 | 26 | -8 | -4 |
| `quat_mul_quat` | 21 | 25 | 21 | -4 | +0 |
| `quat_mul_vec3` | 37 | 41 | 36 | -4 | +1 |
| `quat_mul_vec3a` | 35 | 42 | 31 | -7 | +4 |
| `quat_slerp.nearly_parallel` | 47 | 54 | 52 | -7 | -5 |
| `quat_slerp.negative_dot` | 197 | 200 | 201 | -3 | -4 |
| `quat_slerp.orthogonal` | 223 | 226 | 227 | -3 | -4 |
| `vec3_cross` | 17 | 17 | 17 | +0 | +0 |
| `vec3_dot` | 15 | 15 | 15 | +0 | +0 |
| `vec3_length` | 14 | 14 | 14 | +0 | +0 |
| `vec3_normalize` | 14 | 14 | 16 | +0 | -2 |
| `vec3a_cross` | 13 | 19 | 11 | -6 | +2 |
| `vec3a_dot` | 10 | 15 | 11 | -5 | -1 |
| `vec3a_length` | 12 | 14 | 13 | -2 | -1 |
| `vec3a_lerp` | 7 | 22 | 7 | -15 | +0 |
| `vec3a_normalize` | 10 | 16 | 12 | -6 | -2 |
| `vec3a_normalize_or_zero.nonzero` | 23 | 31 | 25 | -8 | -2 |
| `vec3a_normalize_or_zero.zero` | 23 | 31 | 25 | -8 | -2 |
| `vec3a_select` | 3 | 14 | 7 | -11 | -4 |
| `vec3a_slerp.anti_parallel` | 175 | 201 | 177 | -26 | -2 |
| `vec3a_slerp.general` | 244 | 260 | 245 | -16 | -1 |
| `vec3a_slerp.parallel` | 53 | 56 | 56 | -3 | -3 |
| `vec4_dot` | 9 | 15 | 12 | -6 | -3 |
| `vec4_length` | 11 | 15 | 11 | -4 | +0 |
| `vec4_mul_vec4` | 3 | 5 | 5 | -2 | -2 |
| `vec4_normalize` | 9 | 14 | 11 | -5 | -2 |
| `vec4_select` | 3 | 23 | 4 | -20 | -1 |
