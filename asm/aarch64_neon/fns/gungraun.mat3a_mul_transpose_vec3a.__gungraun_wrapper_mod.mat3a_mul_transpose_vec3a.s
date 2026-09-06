.section .text.gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a,@function
gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a:
	.cfi_startproc
		// src/f32/neon/mat3a.rs:810
		self.x_axis.dot(rhs),
	ldp q2, q3, [x1]
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	zip1 v16.4s, v0.4s, v0.4s
		// src/f32/neon/mat3a.rs:812
		self.z_axis.dot(rhs),
	ldr q6, [x1, #32]
	fmov s1, #1.00000000
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	zip1 v4.4s, v2.4s, v3.4s
	trn2 v5.4s, v2.4s, v3.4s
	ext v7.16b, v6.16b, v0.16b, #4
	mov v4.s[2], v6.s[0]
	uzp1 v6.4s, v0.4s, v0.4s
	mov v5.s[2], v0.s[1]
	ext v7.16b, v16.16b, v7.16b, #8
	mov v4.s[3], v1.s[0]
	mov v5.s[3], v1.s[0]
	uzp1 v1.4s, v6.4s, v0.4s
	fmul v1.4s, v1.4s, v4.4s
	fmul v4.4s, v7.4s, v5.4s
	fadd v5.4s, v1.4s, v4.4s
	fmul v1.4s, v1.4s, v4.4s
	mov v5.s[3], v1.s[3]
	zip2 v1.4s, v2.4s, v3.4s
	fmul v0.4s, v1.4s, v0.s[2]
	rev64 v1.4s, v5.4s
	mov v1.d[0], v0.d[0]
	fadd v0.4s, v5.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:316
		}
	ret
