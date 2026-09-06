.section .text.gungraun::mat2_try_inverse::__gungraun_wrapper_mod::mat2_try_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_try_inverse::__gungraun_wrapper_mod::mat2_try_inverse,@function
gungraun::mat2_try_inverse::__gungraun_wrapper_mod::mat2_try_inverse:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 27
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0
	shufps xmm1, xmm1, 85
	subps xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:504
		unsafe { cmpps(a, b, 0) }
	xorps xmm1, xmm1
	cmpeqps xmm1, xmm2
		// src/f32/sse2/mat2.rs:332
		if Vec4(det) == Vec4::ZERO {
	movmskps eax, xmm1
	xor ecx, ecx
	cmp eax, 15
	setne cl
	movaps xmm1, xmmword ptr [rip + .LCPI226_0]
	divps xmm1, xmm2
	shufps xmm0, xmm0, 39
	mulps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov qword ptr [rdi], rcx
	mov qword ptr [rdi + 8], 0
	movaps xmmword ptr [rdi + 16], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:198
		}
	ret
