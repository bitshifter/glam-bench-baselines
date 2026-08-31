# aarch64 benchmarks

- glam-rs commit: `c1ed8d43c9ec1efaf7a7053f995ca811199add69`
- rustc: `rustc 1.98.0 (88d9e12ae 2026-08-18)`
- valgrind: `valgrind-3.22.0`
- gungraun: `0.19.4`
- target: `aarch64-unknown-linux-gnu`

| Benchmark | neon | scalar-math | Δ simd−scalar |
| --- | --- | --- | --- |
| `affine3a_from_scale_rotation_translation` | 47 | 51 | -4 |
| `affine3a_inverse` | 50 | 73 | -23 |
| `affine3a_mul_affine3a` | 28 | 87 | -59 |
| `affine3a_transform_point3a` | 11 | 34 | -23 |
| `affine3a_transform_vector3a` | 10 | 31 | -21 |
| `mat2_determinant` | 12 | 11 | +1 |
| `mat2_inverse` | 15 | 18 | -3 |
| `mat2_mul_mat2` | 10 | 11 | -1 |
| `mat2_mul_transpose_vec2` | 14 | 14 | +0 |
| `mat2_mul_vec2` | 13 | 10 | +3 |
| `mat2_transpose` | 4 | 4 | +0 |
| `mat3_determinant` | 27 | 27 | +0 |
| `mat3_inverse` | 52 | 52 | +0 |
| `mat3_mul_mat3` | 63 | 63 | +0 |
| `mat3_mul_transpose_vec3` | 25 | 25 | +0 |
| `mat3_mul_vec3` | 21 | 21 | +0 |
| `mat3_transpose` | 11 | 11 | +0 |
| `mat3a_determinant` | 23 | 27 | -4 |
| `mat3a_from_quat` | 41 | 35 | +6 |
| `mat3a_inverse` | 44 | 70 | -26 |
| `mat3a_mul_mat3a` | 22 | 75 | -53 |
| `mat3a_mul_transpose_vec3a` | 26 | 25 | +1 |
| `mat3a_mul_vec3a` | 10 | 31 | -21 |
| `mat3a_transpose` | 13 | 13 | +0 |
| `mat4_determinant` | 50 | 48 | +2 |
| `mat4_from_quat` | 45 | 41 | +4 |
| `mat4_from_scale_rotation_translation` | 51 | 54 | -3 |
| `mat4_inverse` | 94 | 207 | -113 |
| `mat4_mul_mat4` | 35 | 46 | -11 |
| `mat4_mul_transpose_vec4` | 19 | 13 | +6 |
| `mat4_mul_vec4` | 11 | 15 | -4 |
| `mat4_transform_point3` | 14 | 25 | -11 |
| `mat4_transform_vector3` | 13 | 21 | -8 |
| `mat4_transpose` | 31 | 12 | +19 |
| `quat_dot` | 11 | 15 | -4 |
| `quat_from_axis_angle` | 72 | 64 | +8 |
| `quat_from_euler` | 229 | 229 | +0 |
| `quat_inverse` | 5 | 7 | -2 |
| `quat_lerp.negative_dot` | 22 | 30 | -8 |
| `quat_lerp.positive_dot` | 22 | 30 | -8 |
| `quat_mul_quat` | 21 | 25 | -4 |
| `quat_mul_vec3` | 37 | 41 | -4 |
| `quat_mul_vec3a` | 35 | 42 | -7 |
| `quat_slerp.nearly_parallel` | 47 | 54 | -7 |
| `quat_slerp.negative_dot` | 197 | 200 | -3 |
| `quat_slerp.orthogonal` | 223 | 226 | -3 |
| `vec3_cross` | 17 | 17 | +0 |
| `vec3_dot` | 15 | 15 | +0 |
| `vec3_length` | 14 | 14 | +0 |
| `vec3_normalize` | 14 | 14 | +0 |
| `vec3a_cross` | 13 | 19 | -6 |
| `vec3a_dot` | 10 | 15 | -5 |
| `vec3a_length` | 12 | 14 | -2 |
| `vec3a_lerp` | 7 | 22 | -15 |
| `vec3a_normalize` | 10 | 16 | -6 |
| `vec3a_normalize_or_zero.nonzero` | 23 | 31 | -8 |
| `vec3a_normalize_or_zero.zero` | 23 | 31 | -8 |
| `vec3a_select` | 3 | 14 | -11 |
| `vec3a_slerp.anti_parallel` | 175 | 201 | -26 |
| `vec3a_slerp.general` | 244 | 260 | -16 |
| `vec3a_slerp.parallel` | 53 | 56 | -3 |
| `vec4_dot` | 9 | 15 | -6 |
| `vec4_length` | 11 | 15 | -4 |
| `vec4_mul_vec4` | 3 | 5 | -2 |
| `vec4_normalize` | 9 | 14 | -5 |
| `vec4_select` | 3 | 23 | -20 |
