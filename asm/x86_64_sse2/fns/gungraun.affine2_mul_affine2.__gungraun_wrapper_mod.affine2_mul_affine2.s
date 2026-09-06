.section .text.gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2,"ax",@progbits
	.p2align	4
.type	gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2,@function
gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2:
	.cfi_startproc
		// benches/gungraun.rs:593
		black_box(a1 * a2)
	movaps xmm0, xmmword ptr [rsi]
	movaps xmm1, xmmword ptr [rdx]
	movsd xmm2, qword ptr [rdx + 16]
	unpcklps xmm2, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm3, xmm1
	unpcklps xmm3, xmm1
	unpckhps xmm1, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm0
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm4, xmm3
	movlhps xmm4, xmm1
	movhlps xmm1, xmm3
	addps xmm1, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm1
		// benches/gungraun.rs:593
		black_box(a1 * a2)
	movsd xmm0, qword ptr [rsi + 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	movaps xmm1, xmm2
	unpckhpd xmm1, xmm2
	addps xmm1, xmm2
	addps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi + 16], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:594
		}
	ret
