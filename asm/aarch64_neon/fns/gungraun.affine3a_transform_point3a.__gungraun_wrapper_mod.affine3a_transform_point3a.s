.section .text.gungraun::affine3a_transform_point3a::__gungraun_wrapper_mod::affine3a_transform_point3a,"ax",@progbits
	.p2align	2
.type	gungraun::affine3a_transform_point3a::__gungraun_wrapper_mod::affine3a_transform_point3a,@function
gungraun::affine3a_transform_point3a::__gungraun_wrapper_mod::affine3a_transform_point3a:
	.cfi_startproc
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	ldp q1, q2, [x1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v1.4s, v0.s[0]
	fmul v2.4s, v2.4s, v0.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v1.4s, v1.4s, v2.4s
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	ldp q3, q2, [x1, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v0.4s, v3.4s, v0.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v0.4s, v1.4s, v0.4s
	fadd v0.4s, v2.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:624
		}
	ret
