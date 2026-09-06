.section .text.gungraun::affine3a_mul_affine3a::__gungraun_wrapper_mod::affine3a_mul_affine3a,"ax",@progbits
	.p2align	2
.type	gungraun::affine3a_mul_affine3a::__gungraun_wrapper_mod::affine3a_mul_affine3a,@function
gungraun::affine3a_mul_affine3a::__gungraun_wrapper_mod::affine3a_mul_affine3a:
	.cfi_startproc
		// src/f32/affine3a.rs:575
		matrix3: self.matrix3 * rhs.matrix3,
	ldp q0, q1, [x1]
		// src/f32/affine3a.rs:576
		translation: self.matrix3 * rhs.translation + self.translation,
	ldp q7, q2, [x2, #32]
		// src/f32/neon/mat3a.rs:1048
		self.mul(rhs.x_axis),
	ldp q3, q4, [x2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v5.4s, v0.4s, v2.s[0]
	fmul v6.4s, v1.4s, v2.s[1]
	fmul v16.4s, v0.4s, v3.s[0]
	fmul v17.4s, v1.4s, v3.s[1]
	fmul v19.4s, v0.4s, v4.s[0]
	fmul v20.4s, v1.4s, v4.s[1]
	fmul v0.4s, v0.4s, v7.s[0]
	fmul v1.4s, v1.4s, v7.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v5.4s, v5.4s, v6.4s
		// src/f32/affine3a.rs:575
		matrix3: self.matrix3 * rhs.matrix3,
	ldp q18, q6, [x1, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v16.4s, v16.4s, v17.4s
	fadd v17.4s, v19.4s, v20.4s
	fadd v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v2.4s, v18.4s, v2.s[2]
	fmul v3.4s, v18.4s, v3.s[2]
	fmul v4.4s, v18.4s, v4.s[2]
	fmul v1.4s, v18.4s, v7.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v2.4s, v2.4s, v5.4s
	fadd v3.4s, v3.4s, v16.4s
	fadd v4.4s, v4.4s, v17.4s
	fadd v0.4s, v1.4s, v0.4s
	fadd v1.4s, v6.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q3, q4, [x0]
	stp q0, q1, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:618
		}
	ret
