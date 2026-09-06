.section .text.gungraun::mat4_mul_transpose_vec4::__gungraun_wrapper_mod::mat4_mul_transpose_vec4,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_mul_transpose_vec4::__gungraun_wrapper_mod::mat4_mul_transpose_vec4,@function
gungraun::mat4_mul_transpose_vec4::__gungraun_wrapper_mod::mat4_mul_transpose_vec4:
	.cfi_startproc
		// src/f32/neon/mat4.rs:1486
		self.x_axis.dot(rhs),
	ldp q1, q2, [x1]
		// src/f32/neon/mat4.rs:1488
		self.z_axis.dot(rhs),
	ldp q3, q4, [x1, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v0.4s, v1.4s
	fmul v2.4s, v0.4s, v2.4s
	fmul v3.4s, v0.4s, v3.4s
	fmul v0.4s, v0.4s, v4.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:597
		unsafe { _vaddvq_f32(a) }
	faddp v1.4s, v1.4s, v1.4s
	faddp v2.4s, v2.4s, v2.4s
	faddp v3.4s, v3.4s, v3.4s
	faddp v0.4s, v0.4s, v0.4s
	faddp s1, v1.2s
	faddp s2, v2.2s
	faddp s3, v3.2s
	faddp s0, v0.2s
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v1.s[1], v2.s[0]
	mov v1.s[2], v3.s[0]
	mov v1.s[3], v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q1, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:372
		}
	ret
