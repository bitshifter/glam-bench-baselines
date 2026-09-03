# aarch64 benchmarks

- glam-rs commit: `2fc16319b6d702443f62e7331170093846fd26b5`
- rustc stable: `rustc 1.98.0 (88d9e12ae 2026-08-18)`
- rustc nightly: `rustc 1.100.0-nightly (2e2b193f8 2026-09-02)`
- valgrind: `valgrind-3.22.0`
- gungraun: `0.19.4`
- target: `aarch64-unknown-linux-gnu`
- deltas: native SIMD (SSE2 or NEON) minus scalar-math/core-simd instructions

| Benchmark | neon | scalar | coresimd | Δ scalar | Δ coresimd |
| --- | ---: | ---: | ---: | ---: | ---: |
| `affine2_from_scale_angle_translation` | 72 | 72 | 72 | +0 | +0 |
| `affine2_inverse` | 23 | 24 | 23 | -1 | +0 |
| `affine2_mul_affine2` | 20 | 21 | 20 | -1 | +0 |
| `affine2_transform_point2` | 15 | 12 | 15 | +3 | +0 |
| `affine2_transform_vector2` | 13 | 10 | 13 | +3 | +0 |
| `affine3a_from_scale_rotation_translation` | 50 | 51 | 50 | -1 | +0 |
| `affine3a_inverse` | 50 | 73 | 51 | -23 | -1 |
| `affine3a_mul_affine3a` | 28 | 87 | 44 | -59 | -16 |
| `affine3a_transform_point3a` | 11 | 34 | 14 | -23 | -3 |
| `affine3a_transform_vector3a` | 10 | 31 | 13 | -21 | -3 |
| `mat2_determinant` | 12 | 11 | 12 | +1 | +0 |
| `mat2_inverse` | 16 | 18 | 15 | -2 | +1 |
| `mat2_inverse_or_zero.failure` | 21 | 11 | 22 | +10 | -1 |
| `mat2_inverse_or_zero.success` | 28 | 21 | 29 | +7 | -1 |
| `mat2_mul_mat2` | 12 | 11 | 10 | +1 | +2 |
| `mat2_mul_transpose_vec2` | 14 | 14 | 14 | +0 | +0 |
| `mat2_mul_vec2` | 13 | 10 | 12 | +3 | +1 |
| `mat2_transpose` | 4 | 4 | 3 | +0 | +1 |
| `mat2_try_inverse.failure` | 23 | 11 | 24 | +12 | -1 |
| `mat2_try_inverse.success` | 30 | 22 | 31 | +8 | -1 |
| `mat3_determinant` | 27 | 27 | 26 | +0 | +1 |
| `mat3_inverse` | 52 | 52 | 53 | +0 | -1 |
| `mat3_inverse_or_zero.failure` | 36 | 36 | 33 | +0 | +3 |
| `mat3_inverse_or_zero.success` | 65 | 65 | 61 | +0 | +4 |
| `mat3_mul_mat3` | 63 | 63 | 62 | +0 | +1 |
| `mat3_mul_transpose_vec3` | 25 | 25 | 25 | +0 | +0 |
| `mat3_mul_vec3` | 21 | 21 | 21 | +0 | +0 |
| `mat3_transpose` | 11 | 11 | 11 | +0 | +0 |
| `mat3_try_inverse.failure` | 38 | 38 | 36 | +0 | +2 |
| `mat3_try_inverse.success` | 67 | 67 | 63 | +0 | +4 |
| `mat3a_determinant` | 23 | 27 | 22 | -4 | +1 |
| `mat3a_from_quat` | 40 | 35 | 41 | +5 | -1 |
| `mat3a_inverse` | 44 | 70 | 41 | -26 | +3 |
| `mat3a_inverse_or_zero.failure` | 25 | 30 | 24 | -5 | +1 |
| `mat3a_inverse_or_zero.success` | 49 | 63 | 46 | -14 | +3 |
| `mat3a_mul_mat3a` | 22 | 75 | 34 | -53 | -12 |
| `mat3a_mul_transpose_vec3a` | 27 | 25 | 18 | +2 | +9 |
| `mat3a_mul_vec3a` | 9 | 31 | 14 | -22 | -5 |
| `mat3a_transpose` | 13 | 13 | 14 | +0 | -1 |
| `mat3a_try_inverse.failure` | 23 | 31 | 22 | -8 | +1 |
| `mat3a_try_inverse.success` | 48 | 62 | 45 | -14 | +3 |
| `mat4_determinant` | 50 | 48 | 56 | +2 | -6 |
| `mat4_from_quat` | 45 | 41 | 45 | +4 | +0 |
| `mat4_from_scale_rotation_translation` | 51 | 54 | 51 | -3 | +0 |
| `mat4_inverse` | 96 | 207 | 95 | -111 | +1 |
| `mat4_inverse_or_zero.failure` | 94 | 80 | 97 | +14 | -3 |
| `mat4_inverse_or_zero.success` | 100 | 214 | 103 | -114 | -3 |
| `mat4_mul_mat4` | 35 | 46 | 35 | -11 | +0 |
| `mat4_mul_transpose_vec4` | 20 | 13 | 25 | +7 | -5 |
| `mat4_mul_vec4` | 11 | 15 | 11 | -4 | +0 |
| `mat4_transform_point3` | 14 | 25 | 14 | -11 | +0 |
| `mat4_transform_vector3` | 13 | 21 | 13 | -8 | +0 |
| `mat4_transpose` | 31 | 12 | 16 | +19 | +15 |
| `mat4_try_inverse.failure` | 89 | 52 | 90 | +37 | -1 |
| `mat4_try_inverse.success` | 98 | 206 | 99 | -108 | -1 |
| `quat_dot` | 9 | 15 | 10 | -6 | -1 |
| `quat_from_axis_angle` | 72 | 64 | 69 | +8 | +3 |
| `quat_from_euler` | 227 | 231 | 219 | -4 | +8 |
| `quat_inverse` | 5 | 7 | 5 | -2 | +0 |
| `quat_lerp.negative_dot` | 20 | 30 | 26 | -10 | -6 |
| `quat_lerp.positive_dot` | 20 | 30 | 26 | -10 | -6 |
| `quat_mul_quat` | 23 | 25 | 23 | -2 | +0 |
| `quat_mul_vec3` | 38 | 41 | 39 | -3 | -1 |
| `quat_mul_vec3a` | 33 | 42 | 33 | -9 | +0 |
| `quat_slerp.nearly_parallel` | 47 | 54 | 52 | -7 | -5 |
| `quat_slerp.negative_dot` | 197 | 200 | 201 | -3 | -4 |
| `quat_slerp.orthogonal` | 223 | 226 | 227 | -3 | -4 |
| `vec3_cross` | 17 | 17 | 17 | +0 | +0 |
| `vec3_dot` | 15 | 15 | 15 | +0 | +0 |
| `vec3_length` | 14 | 14 | 14 | +0 | +0 |
| `vec3_normalize` | 14 | 14 | 16 | +0 | -2 |
| `vec3a_cross` | 15 | 19 | 13 | -4 | +2 |
| `vec3a_dot` | 10 | 15 | 13 | -5 | -3 |
| `vec3a_length` | 11 | 14 | 13 | -3 | -2 |
| `vec3a_lerp` | 9 | 22 | 9 | -13 | +0 |
| `vec3a_normalize` | 10 | 16 | 12 | -6 | -2 |
| `vec3a_normalize_or_zero.nonzero` | 24 | 31 | 25 | -7 | -1 |
| `vec3a_normalize_or_zero.zero` | 24 | 31 | 25 | -7 | -1 |
| `vec3a_select` | 6 | 14 | 7 | -8 | -1 |
| `vec3a_slerp.anti_parallel` | 175 | 201 | 177 | -26 | -2 |
| `vec3a_slerp.general` | 244 | 260 | 245 | -16 | -1 |
| `vec3a_slerp.parallel` | 53 | 56 | 56 | -3 | -3 |
| `vec4_dot` | 11 | 15 | 10 | -4 | +1 |
| `vec4_length` | 10 | 15 | 11 | -5 | -1 |
| `vec4_mul_vec4` | 5 | 5 | 5 | +0 | +0 |
| `vec4_normalize` | 10 | 14 | 11 | -4 | -1 |
| `vec4_select` | 6 | 23 | 7 | -17 | -1 |
