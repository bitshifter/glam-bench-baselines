.section .text.gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,@function
gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero:
	.cfi_startproc
		// src/f32/sse2/mat3a.rs:612
		let tmp1 = self.z_axis.cross(self.x_axis);
	movaps xmm0, xmmword ptr [rsi]
		// src/f32/sse2/mat3a.rs:611
		let tmp0 = self.y_axis.cross(self.z_axis);
	movaps xmm3, xmmword ptr [rsi + 16]
	movaps xmm4, xmmword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm3
	shufps xmm2, xmm3, 210
	movaps xmm6, xmm0
	shufps xmm6, xmm0, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm1, xmm3
	mulps xmm1, xmm6
	movaps xmm5, xmm2
	mulps xmm5, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm1, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm1, xmm1, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm5, xmm4
	mulps xmm5, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm7, xmm5
	shufps xmm7, xmm5, 85
	addss xmm7, xmm5
	movhlps xmm5, xmm5
	addss xmm5, xmm7
	xorps xmm8, xmm8
	xorps xmm7, xmm7
		// src/f32/sse2/mat3a.rs:616
		if det == 0.0 {
	ucomiss xmm5, xmm7
	xorps xmm7, xmm7
	xorps xmm9, xmm9
	jne .LBB252_1
	jnp .LBB252_2
.LBB252_1:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm7, xmm4
	shufps xmm7, xmm4, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm7
	mulps xmm6, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm0, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm0, xmm0, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm4
	mulps xmm3, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm2, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm2, xmm2, 82
	movss xmm3, dword ptr [rip + .LCPI252_0]
		// src/f32/sse2/mat3a.rs:622
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm3, xmm5
	shufps xmm3, xmm3, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm3
	mulps xmm0, xmm3
	mulps xmm1, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm7, xmm2
	movlhps xmm7, xmm0
	movhlps xmm0, xmm2
	movaps xmm8, xmm7
	shufps xmm8, xmm1, 8
	shufps xmm7, xmm1, 93
	shufps xmm0, xmm1, 168
	movaps xmm9, xmm0
.LBB252_2:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm8
	movaps xmmword ptr [rdi + 16], xmm7
	movaps xmmword ptr [rdi + 32], xmm9
	#APP
	#NO_APP
		// benches/gungraun.rs:285
		}
	ret
