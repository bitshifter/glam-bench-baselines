.section .text.gungraun::vec3a_lerp_monotonic::__gungraun_wrapper_mod::vec3a_lerp_monotonic,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_lerp_monotonic::__gungraun_wrapper_mod::vec3a_lerp_monotonic,@function
gungraun::vec3a_lerp_monotonic::__gungraun_wrapper_mod::vec3a_lerp_monotonic:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:64859
		unsafe { simd_sub(a, b) }
	fsub v1.4s, v1.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15008
		unsafe { simd_fma(b, c, a) }
	fmla v0.4s, v1.4s, v2.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:507
		}
	ret
