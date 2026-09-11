# aarch64 benchmarks

- glam-rs commit: `09aafc465e4b9b670f215068224846a18f24749b`
- rustc stable: `rustc 1.98.0 (88d9e12ae 2026-08-18)`
- rustc nightly: `rustc 1.100.0-nightly (67eda617e 2026-09-10)`
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
| `affine2_transform_vector2` | 13 | 10 | 12 | +3 | +1 |
| `affine3a_from_scale_rotation_translation` | 50 | 51 | 47 | -1 | +3 |
| `affine3a_inverse` | 51 | 74 | 56 | -23 | -5 |
| `affine3a_mul_affine3a` | 28 | 87 | 44 | -59 | -16 |
| `affine3a_transform_point3a` | 11 | 34 | 14 | -23 | -3 |
| `affine3a_transform_vector3a` | 9 | 31 | 14 | -22 | -5 |
| `mat2_determinant` | 12 | 11 | 11 | +1 | +1 |
| `mat2_inverse` | 16 | 18 | 16 | -2 | +0 |
| `mat2_inverse_or_zero.failure` | 21 | 11 | 22 | +10 | -1 |
| `mat2_inverse_or_zero.success` | 28 | 21 | 29 | +7 | -1 |
| `mat2_mul_mat2` | 12 | 11 | 12 | +1 | +0 |
| `mat2_mul_transpose_vec2` | 14 | 14 | 14 | +0 | +0 |
| `mat2_mul_vec2` | 12 | 10 | 13 | +2 | -1 |
| `mat2_transpose` | 4 | 4 | 3 | +0 | +1 |
| `mat2_try_inverse.failure` | 22 | 11 | 24 | +11 | -2 |
| `mat2_try_inverse.success` | 29 | 22 | 31 | +7 | -2 |
| `mat3_determinant` | 27 | 27 | 26 | +0 | +1 |
| `mat3_inverse` | 51 | 51 | 52 | +0 | -1 |
| `mat3_inverse_or_zero.failure` | 35 | 35 | 33 | +0 | +2 |
| `mat3_inverse_or_zero.success` | 68 | 68 | 62 | +0 | +6 |
| `mat3_mul_mat3` | 63 | 63 | 62 | +0 | +1 |
| `mat3_mul_transpose_vec3` | 25 | 25 | 25 | +0 | +0 |
| `mat3_mul_vec3` | 21 | 21 | 21 | +0 | +0 |
| `mat3_transpose` | 11 | 11 | 11 | +0 | +0 |
| `mat3_try_inverse.failure` | 38 | 38 | 36 | +0 | +2 |
| `mat3_try_inverse.success` | 70 | 70 | 64 | +0 | +6 |
| `mat3a_determinant` | 23 | 27 | 22 | -4 | +1 |
| `mat3a_from_quat` | 41 | 35 | 41 | +6 | +0 |
| `mat3a_inverse` | 44 | 62 | 45 | -18 | -1 |
| `mat3a_inverse_or_zero.failure` | 25 | 30 | 24 | -5 | +1 |
| `mat3a_inverse_or_zero.success` | 49 | 63 | 50 | -14 | -1 |
| `mat3a_mul_mat3a` | 22 | 75 | 34 | -53 | -12 |
| `mat3a_mul_transpose_vec3a` | 27 | 25 | 19 | +2 | +8 |
| `mat3a_mul_vec3a` | 10 | 31 | 14 | -21 | -4 |
| `mat3a_transpose` | 13 | 13 | 14 | +0 | -1 |
| `mat3a_try_inverse.failure` | 23 | 31 | 22 | -8 | +1 |
| `mat3a_try_inverse.success` | 48 | 62 | 49 | -14 | -1 |
| `mat4_determinant` | 50 | 48 | 59 | +2 | -9 |
| `mat4_from_quat` | 45 | 41 | 45 | +4 | +0 |
| `mat4_from_scale_rotation_translation` | 52 | 54 | 51 | -2 | +1 |
| `mat4_inverse` | 98 | 207 | 100 | -109 | -2 |
| `mat4_inverse_or_zero.failure` | 98 | 78 | 98 | +20 | +0 |
| `mat4_inverse_or_zero.success` | 104 | 212 | 104 | -108 | +0 |
| `mat4_mul_mat4` | 35 | 46 | 35 | -11 | +0 |
| `mat4_mul_transpose_vec4` | 20 | 13 | 25 | +7 | -5 |
| `mat4_mul_vec4` | 11 | 15 | 12 | -4 | -1 |
| `mat4_to_scale_rotation_translation` | 80 | 85 | 82 | -5 | -2 |
| `mat4_transform_point3` | 14 | 25 | 14 | -11 | +0 |
| `mat4_transform_vector3` | 13 | 21 | 13 | -8 | +0 |
| `mat4_transpose` | 31 | 12 | 16 | +19 | +15 |
| `mat4_try_inverse.failure` | 93 | 52 | 93 | +41 | +0 |
| `mat4_try_inverse.success` | 102 | 206 | 102 | -104 | +0 |
| `quat_dot` | 9 | 15 | 10 | -6 | -1 |
| `quat_from_axis_angle` | 72 | 64 | 69 | +8 | +3 |
| `quat_from_euler` | 227 | 229 | 217 | -2 | +10 |
| `quat_inverse` | 5 | 7 | 5 | -2 | +0 |
| `quat_is_near_identity` | 13 | 13 | 13 | +0 | +0 |
| `quat_lerp.negative_dot` | 22 | 30 | 26 | -8 | -4 |
| `quat_lerp.positive_dot` | 22 | 30 | 26 | -8 | -4 |
| `quat_mul_quat` | 23 | 25 | 21 | -2 | +2 |
| `quat_mul_vec3` | 38 | 41 | 36 | -3 | +2 |
| `quat_mul_vec3a` | 35 | 42 | 33 | -7 | +2 |
| `quat_slerp.nearly_parallel` | 31 | 54 | 52 | -23 | -21 |
| `quat_slerp.negative_dot` | 129 | 200 | 201 | -71 | -72 |
| `quat_slerp.orthogonal` | 129 | 226 | 227 | -97 | -98 |
| `vec3_cross` | 17 | 17 | 17 | +0 | +0 |
| `vec3_dot` | 15 | 15 | 15 | +0 | +0 |
| `vec3_length` | 14 | 14 | 14 | +0 | +0 |
| `vec3_normalize` | 14 | 14 | 16 | +0 | -2 |
| `vec3a_cross` | 15 | 19 | 13 | -4 | +2 |
| `vec3a_dot` | 12 | 15 | 13 | -3 | -1 |
| `vec3a_length` | 11 | 14 | 12 | -3 | -1 |
| `vec3a_lerp` | 9 | 22 | 9 | -13 | +0 |
| `vec3a_normalize` | 11 | 16 | 12 | -5 | -1 |
| `vec3a_normalize_or_zero.nonzero` | 24 | 31 | 25 | -7 | -1 |
| `vec3a_normalize_or_zero.zero` | 24 | 31 | 25 | -7 | -1 |
| `vec3a_select` | 3 | 14 | 7 | -11 | -4 |
| `vec3a_slerp.anti_parallel` | 174 | 201 | 177 | -27 | -3 |
| `vec3a_slerp.general` | 160 | 260 | 245 | -100 | -85 |
| `vec3a_slerp.parallel` | 50 | 56 | 56 | -6 | -6 |
| `vec4_dot` | 11 | 15 | 10 | -4 | +1 |
| `vec4_length` | 11 | 15 | 12 | -4 | -1 |
| `vec4_mul_vec4` | 3 | 5 | 5 | -2 | -2 |
| `vec4_normalize` | 10 | 14 | 10 | -4 | +0 |
| `vec4_select` | 3 | 23 | 4 | -20 | -1 |
