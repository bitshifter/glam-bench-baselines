.section .text.gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp,@function
gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp:
		// benches/gungraun.rs:498
		#[bench::args(vec3a(), vec3a(), bb_f32())]
	.cfi_startproc
	fmov s3, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v1.4s, v1.4s, v2.s[0]
		// src/f32/neon/vec3a.rs:996
		self * (1.0 - s) + rhs * s
	fsub s3, s3, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v0.4s, v0.4s, v3.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v0.4s, v1.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:501
		}
	ret
