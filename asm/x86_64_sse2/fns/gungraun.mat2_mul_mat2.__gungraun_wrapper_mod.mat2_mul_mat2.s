.section .text.gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2,@function
gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm1
	unpcklps xmm2, xmm1
	unpckhps xmm1, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm0
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm0, xmm2
	movlhps xmm0, xmm1
	movhlps xmm1, xmm2
	addps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:204
		}
	ret
