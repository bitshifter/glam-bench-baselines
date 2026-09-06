.section .text.gungraun::vec3a_dot::__gungraun_wrapper_mod::vec3a_dot,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_dot::__gungraun_wrapper_mod::vec3a_dot,@function
gungraun::vec3a_dot::__gungraun_wrapper_mod::vec3a_dot:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 85
	addss xmm1, xmm0
	movhlps xmm0, xmm0
	addss xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rsp - 4], xmm0
	lea rax, [rsp - 4]
	#APP
	#NO_APP
		// benches/gungraun.rs:471
		}
	movss xmm0, dword ptr [rsp - 4]
	ret
