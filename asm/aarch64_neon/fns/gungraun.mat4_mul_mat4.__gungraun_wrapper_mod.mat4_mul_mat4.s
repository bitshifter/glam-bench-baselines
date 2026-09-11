.section .text.gungraun::mat4_mul_mat4::__gungraun_wrapper_mod::mat4_mul_mat4,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_mul_mat4::__gungraun_wrapper_mod::mat4_mul_mat4,@function
gungraun::mat4_mul_mat4::__gungraun_wrapper_mod::mat4_mul_mat4:
	.cfi_startproc
		// src/f32/neon/mat4.rs:1753
		self.mul(rhs.x_axis),
	ldp q0, q1, [x1]
	ldp q2, q3, [x2]
		// src/f32/neon/mat4.rs:1755
		self.mul(rhs.z_axis),
	ldp q6, q7, [x2, #32]
		// src/f32/neon/mat4.rs:1753
		self.mul(rhs.x_axis),
	ldp q18, q21, [x1, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v4.4s, v0.4s, v2.s[0]
	fmul v5.4s, v1.4s, v2.s[1]
	fmul v16.4s, v0.4s, v3.s[0]
	fmul v17.4s, v1.4s, v3.s[1]
	fmul v19.4s, v0.4s, v6.s[0]
	fmul v20.4s, v1.4s, v6.s[1]
	fmul v0.4s, v0.4s, v7.s[0]
	fmul v1.4s, v1.4s, v7.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v4.4s, v4.4s, v5.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v5.4s, v18.4s, v2.s[2]
	fmul v2.4s, v21.4s, v2.s[3]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v16.4s, v16.4s, v17.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v17.4s, v18.4s, v3.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v19.4s, v19.4s, v20.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v20.4s, v18.4s, v6.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v18.4s, v7.s[2]
	fmul v3.4s, v21.4s, v3.s[3]
	fmul v6.4s, v21.4s, v6.s[3]
	fmul v7.4s, v21.4s, v7.s[3]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v4.4s, v5.4s, v4.4s
	fadd v5.4s, v17.4s, v16.4s
	fadd v16.4s, v20.4s, v19.4s
	fadd v0.4s, v1.4s, v0.4s
	fadd v1.4s, v2.4s, v4.4s
	fadd v2.4s, v3.4s, v5.4s
	fadd v3.4s, v6.4s, v16.4s
	fadd v0.4s, v7.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q1, q2, [x0]
	stp q3, q0, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:360
		}
	ret
