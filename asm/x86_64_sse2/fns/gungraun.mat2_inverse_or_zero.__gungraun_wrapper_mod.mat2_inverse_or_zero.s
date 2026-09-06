.section .text.gungraun::mat2_inverse_or_zero::__gungraun_wrapper_mod::mat2_inverse_or_zero,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_inverse_or_zero::__gungraun_wrapper_mod::mat2_inverse_or_zero,@function
gungraun::mat2_inverse_or_zero::__gungraun_wrapper_mod::mat2_inverse_or_zero:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm0
	shufps xmm2, xmm0, 27
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm1, xmm2
	shufps xmm1, xmm2, 0
	shufps xmm2, xmm2, 85
	subps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:504
		unsafe { cmpps(a, b, 0) }
	xorps xmm2, xmm2
	movaps xmm3, xmm1
	cmpeqps xmm3, xmm2
		// src/f32/sse2/mat2.rs:332
		if Vec4(det) == Vec4::ZERO {
	movmskps eax, xmm3
	xor eax, 15
	je .LBB242_2
	movaps xmm2, xmmword ptr [rip + .LCPI242_0]
	divps xmm2, xmm1
	shufps xmm0, xmm0, 39
	mulps xmm0, xmm2
	movaps xmm2, xmm0
.LBB242_2:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:185
		}
	ret
