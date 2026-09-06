.section .text.gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a,@function
gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a:
		// benches/gungraun.rs:313
		#[bench::args(mat3a(), vec3a())]
	.cfi_startproc
	movaps xmm1, xmmword ptr [rsi]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm0
	movaps xmm2, xmmword ptr [rsi + 16]
	mulps xmm2, xmm0
	mulps xmm0, xmmword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm3, xmm2
	movlhps xmm3, xmm1
	shufps xmm3, xmm0, 18
	movaps xmm4, xmm2
	shufps xmm4, xmm1, 85
	shufps xmm4, xmm0, 66
	addps xmm4, xmm3
	unpckhpd xmm2, xmm1
	shufps xmm2, xmm0, 162
	addps xmm2, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:316
		}
	ret
