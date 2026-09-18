.section .text.gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,@function
gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero:
	.cfi_startproc
		// src/f32/sse2/mat3a.rs:707
		let det = self.x_axis.dot(tmp0);
	movaps xmm3, xmmword ptr [rsi]
		// src/f32/sse2/mat3a.rs:706
		let tmp0 = self.y_axis.cross(self.z_axis);
	movaps xmm0, xmmword ptr [rsi + 16]
	movaps xmm5, xmmword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm4, xmm0
	shufps xmm4, xmm0, 210
	movaps xmm1, xmm5
	shufps xmm1, xmm5, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm2, xmm4
	mulps xmm2, xmm5
	movaps xmm6, xmm0
	mulps xmm6, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm2, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm2, xmm2, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm7, xmm3
	mulps xmm7, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm6, xmm7
	shufps xmm6, xmm7, 85
	addss xmm6, xmm7
	movhlps xmm7, xmm7
	addss xmm7, xmm6
	xorps xmm8, xmm8
	xorps xmm6, xmm6
		// src/f32/sse2/mat3a.rs:709
		if det == 0.0 {
	ucomiss xmm7, xmm6
	xorps xmm6, xmm6
	xorps xmm9, xmm9
	jne .LBB255_1
	jnp .LBB255_2
.LBB255_1:
	movss xmm6, dword ptr [rip + .LCPI255_0]
		// src/f32/sse2/mat3a.rs:717
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm6, xmm7
	shufps xmm6, xmm6, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm7, xmm3
	shufps xmm7, xmm3, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm3
	mulps xmm5, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm1, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm1, xmm1, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm7
	mulps xmm4, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm0, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm0, xmm0, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm6
	mulps xmm1, xmm6
	mulps xmm0, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm6, xmm2
	movlhps xmm6, xmm1
	movhlps xmm1, xmm2
	movaps xmm8, xmm6
	shufps xmm8, xmm0, 8
	shufps xmm6, xmm0, 93
	shufps xmm1, xmm0, 168
	movaps xmm9, xmm1
.LBB255_2:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm8
	movaps xmmword ptr [rdi + 16], xmm6
	movaps xmmword ptr [rdi + 32], xmm9
	#APP
	#NO_APP
		// benches/gungraun.rs:285
		}
	ret
