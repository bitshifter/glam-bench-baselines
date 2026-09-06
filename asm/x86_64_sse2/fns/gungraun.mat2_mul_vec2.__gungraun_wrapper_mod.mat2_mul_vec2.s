.section .text.gungraun::mat2_mul_vec2::__gungraun_wrapper_mod::mat2_mul_vec2,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_mul_vec2::__gungraun_wrapper_mod::mat2_mul_vec2,@function
gungraun::mat2_mul_vec2::__gungraun_wrapper_mod::mat2_mul_vec2:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:975
		__m128([d, c, b, a])
	shufps xmm1, xmm2, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmm0, xmm1
	unpckhpd xmm0, xmm1
	addps xmm0, xmm1
	movlps qword ptr [rsp - 8], xmm0
	lea rax, [rsp - 8]
	#APP
	#NO_APP
		// benches/gungraun.rs:210
		}
	movss xmm0, dword ptr [rsp - 8]
	movss xmm1, dword ptr [rsp - 4]
	ret
