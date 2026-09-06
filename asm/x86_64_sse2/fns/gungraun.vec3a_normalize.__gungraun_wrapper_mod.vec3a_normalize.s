.section .text.gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize,@function
gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm1, xmm0
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 85
	addss xmm2, xmm1
	movhlps xmm1, xmm1
	addss xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:138
		unsafe { simd_fsqrt(a) }
	sqrtss xmm1, xmm1
	shufps xmm1, xmm1, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:114
		unsafe { simd_div(a, b) }
	divps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:489
		}
	ret
