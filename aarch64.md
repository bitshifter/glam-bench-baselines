# aarch64 benchmarks

- glam-rs commit: `063b765e2fa95ed7c381b252889936007b43318e`
- rustc: `rustc 1.98.0 (88d9e12ae 2026-08-18)`
- valgrind: `valgrind-3.22.0`
- gungraun: `0.19.4`
- target: `aarch64-unknown-linux-gnu`

| Benchmark | neon | scalar-math |
| --- | --- | --- |
| `affine3a_from_scale_rotation_translation` | 47 | 51 |
| `affine3a_inverse` | 50 | 73 |
| `affine3a_mul_affine3a` | 28 | 87 |
| `affine3a_transform_point3a` | 11 | 34 |
| `affine3a_transform_vector3a` | 10 | 31 |
| `mat2_determinant` | 12 | 11 |
| `mat2_inverse` | 15 | 18 |
| `mat2_mul_mat2` | 10 | 11 |
| `mat2_mul_transpose_vec2` | 14 | 14 |
| `mat2_mul_vec2` | 13 | 10 |
| `mat2_transpose` | 4 | 4 |
| `mat3_determinant` | 27 | 27 |
| `mat3_inverse` | 52 | 52 |
| `mat3_mul_mat3` | 63 | 63 |
| `mat3_mul_transpose_vec3` | 25 | 25 |
| `mat3_mul_vec3` | 21 | 21 |
| `mat3_transpose` | 11 | 11 |
| `mat3a_determinant` | 23 | 27 |
| `mat3a_from_quat` | 41 | 35 |
| `mat3a_inverse` | 44 | 70 |
| `mat3a_mul_mat3a` | 22 | 75 |
| `mat3a_mul_transpose_vec3a` | 26 | 25 |
| `mat3a_mul_vec3a` | 10 | 31 |
| `mat3a_transpose` | 13 | 13 |
| `mat4_determinant` | 50 | 48 |
| `mat4_from_quat` | 45 | 41 |
| `mat4_from_scale_rotation_translation` | 51 | 54 |
| `mat4_inverse` | 94 | 207 |
| `mat4_mul_mat4` | 35 | 46 |
| `mat4_mul_transpose_vec4` | 19 | 13 |
| `mat4_mul_vec4` | 11 | 15 |
| `mat4_transform_point3` | 14 | 25 |
| `mat4_transform_vector3` | 13 | 21 |
| `mat4_transpose` | 31 | 12 |
| `quat_dot` | 11 | 15 |
| `quat_from_axis_angle` | 72 | 64 |
| `quat_from_euler` | 229 | 229 |
| `quat_inverse` | 5 | 7 |
| `quat_lerp.negative_dot` | 22 | 30 |
| `quat_lerp.positive_dot` | 22 | 30 |
| `quat_mul_quat` | 21 | 25 |
| `quat_mul_vec3` | 37 | 41 |
| `quat_mul_vec3a` | 35 | 42 |
| `quat_slerp.nearly_parallel` | 47 | 54 |
| `quat_slerp.negative_dot` | 197 | 200 |
| `quat_slerp.orthogonal` | 223 | 226 |
| `vec3_cross` | 17 | 17 |
| `vec3_dot` | 15 | 15 |
| `vec3_length` | 14 | 14 |
| `vec3_normalize` | 14 | 14 |
| `vec3a_cross` | 13 | 19 |
| `vec3a_dot` | 10 | 15 |
| `vec3a_length` | 12 | 14 |
| `vec3a_lerp` | 7 | 22 |
| `vec3a_normalize` | 10 | 16 |
| `vec3a_normalize_or_zero.nonzero` | 23 | 31 |
| `vec3a_normalize_or_zero.zero` | 23 | 31 |
| `vec3a_select` | 3 | 14 |
| `vec3a_slerp.anti_parallel` | 175 | 201 |
| `vec3a_slerp.general` | 244 | 260 |
| `vec3a_slerp.parallel` | 53 | 56 |
| `vec4_dot` | 9 | 15 |
| `vec4_length` | 11 | 15 |
| `vec4_mul_vec4` | 3 | 5 |
| `vec4_normalize` | 9 | 14 |
| `vec4_select` | 3 | 23 |
