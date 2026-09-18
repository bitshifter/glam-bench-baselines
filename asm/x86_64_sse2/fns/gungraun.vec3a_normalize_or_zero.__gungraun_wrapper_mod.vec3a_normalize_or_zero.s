.section .text.gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero,@function
gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm1, xmm0
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:188
		($x:expr, $idx:expr $(,)?) => {{ $crate::intrinsics::simd::simd_extract($x, const { $idx }) }};
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 85
	addss xmm2, xmm1
	movhlps xmm1, xmm1
	addss xmm1, xmm2
	xorps xmm2, xmm2
	sqrtss xmm2, xmm1
	movss xmm1, dword ptr [rip + .LCPI269_0]
	divss xmm1, xmm2
	movd eax, xmm1
		// src/f32/sse2/vec3a.rs:709
		if rcp.is_finite() && rcp > 0.0 {
	mov ecx, eax
	and ecx, 2147483647
	add ecx, -8388608
	shufps xmm1, xmm1, 0
	mulps xmm1, xmm0
	xorps xmm0, xmm0
	test eax, eax
	jns .LBB269_1
	dec eax
	cmp ecx, 2130706432
	jae .LBB269_3
.LBB269_4:
	cmp eax, 8388607
	jae .LBB269_5
.LBB269_6:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:508
		}
	ret
.LBB269_1:
	movaps xmm0, xmm1
		// src/f32/sse2/vec3a.rs:709
		if rcp.is_finite() && rcp > 0.0 {
	dec eax
	cmp ecx, 2130706432
	jb .LBB269_4
.LBB269_3:
	xorps xmm0, xmm0
	cmp eax, 8388607
	jb .LBB269_6
.LBB269_5:
	movaps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:508
		}
	ret
