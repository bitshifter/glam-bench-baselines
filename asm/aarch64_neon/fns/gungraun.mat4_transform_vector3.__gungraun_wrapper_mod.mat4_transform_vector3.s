.section .text.gungraun::mat4_transform_vector3::__gungraun_wrapper_mod::mat4_transform_vector3,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_transform_vector3::__gungraun_wrapper_mod::mat4_transform_vector3,@function
gungraun::mat4_transform_vector3::__gungraun_wrapper_mod::mat4_transform_vector3:
	.cfi_startproc
		// src/f32/neon/mat4.rs:1420
		let mut res = self.x_axis.mul(rhs.x);
	ldp q1, q2, [x1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	add x8, x0, #8
		// src/f32/neon/mat4.rs:1420
		let mut res = self.x_axis.mul(rhs.x);
	ldr s0, [x2]
		// src/f32/neon/mat4.rs:1421
		res = self.y_axis.mul(rhs.y).add(res);
	ldur d3, [x2, #4]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v0.4s, v1.4s, v0.s[0]
	fmul v1.4s, v2.4s, v3.s[0]
		// src/f32/neon/mat4.rs:1422
		res = self.z_axis.mul(rhs.z).add(res);
	ldr q2, [x1, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v2.4s, v2.4s, v3.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v0.4s, v0.4s, v1.4s
	fadd v0.4s, v2.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d0, [x0]
	st1 { v0.s }[2], [x8]
	//APP
	//NO_APP
		// benches/gungraun.rs:402
		}
	ret
