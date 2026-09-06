.section .text.gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4,"ax",@progbits
	.p2align	4
.type	gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4,@function
gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:528
		}
	ret
