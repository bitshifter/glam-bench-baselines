.section .text.gungraun::vec3a_length::__gungraun_wrapper_mod::vec3a_length,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_length::__gungraun_wrapper_mod::vec3a_length,@function
gungraun::vec3a_length::__gungraun_wrapper_mod::vec3a_length:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:188
		($x:expr, $idx:expr $(,)?) => {{ $crate::intrinsics::simd::simd_extract($x, const { $idx }) }};
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 85
	addss xmm1, xmm0
	movhlps xmm0, xmm0
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rsp - 4], xmm0
	lea rax, [rsp - 4]
	#APP
	#NO_APP
		// benches/gungraun.rs:483
		}
	movss xmm0, dword ptr [rsp - 4]
	ret
