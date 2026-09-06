.section .text.gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4,"ax",@progbits
	.p2align	2
.type	gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4,@function
gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:528
		}
	ret
