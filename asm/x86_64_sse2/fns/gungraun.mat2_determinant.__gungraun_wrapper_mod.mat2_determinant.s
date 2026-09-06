.section .text.gungraun::mat2_determinant::__gungraun_wrapper_mod::mat2_determinant,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_determinant::__gungraun_wrapper_mod::mat2_determinant,@function
gungraun::mat2_determinant::__gungraun_wrapper_mod::mat2_determinant:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 235
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:188
		($x:expr, $idx:expr $(,)?) => {{ $crate::intrinsics::simd::simd_extract($x, const { $idx }) }};
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 85
	subss xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rsp - 4], xmm1
	lea rax, [rsp - 4]
	#APP
	#NO_APP
		// benches/gungraun.rs:172
		}
	movss xmm0, dword ptr [rsp - 4]
	ret
