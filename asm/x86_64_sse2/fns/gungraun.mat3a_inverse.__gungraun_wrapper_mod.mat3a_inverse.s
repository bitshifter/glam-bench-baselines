.section .text.gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,@function
gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse:
	.cfi_startproc
		// src/f32/sse2/mat3a.rs:612
		let tmp1 = self.z_axis.cross(self.x_axis);
	movaps xmm0, xmmword ptr [rsi]
		// src/f32/sse2/mat3a.rs:611
		let tmp0 = self.y_axis.cross(self.z_axis);
	movaps xmm4, xmmword ptr [rsi + 16]
	movaps xmm3, xmmword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm1, xmm4
	shufps xmm1, xmm4, 210
	movaps xmm2, xmm0
	shufps xmm2, xmm0, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm5, xmm1
	mulps xmm5, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm6, xmm3
	shufps xmm6, xmm3, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm6
	mulps xmm6, xmm4
	mulps xmm4, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm4, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm4, xmm4, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm3
	mulps xmm1, xmm3
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm5, xmm3
	shufps xmm5, xmm3, 85
	addss xmm5, xmm3
	movhlps xmm3, xmm3
	addss xmm3, xmm5
	movss xmm5, dword ptr [rip + .LCPI182_0]
		// src/f32/sse2/mat3a.rs:622
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm5, xmm3
	shufps xmm5, xmm5, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm0, xmm0, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm1, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm1, xmm1, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm5
	mulps xmm0, xmm5
	mulps xmm5, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm1
	movlhps xmm2, xmm0
	movhlps xmm0, xmm1
	movaps xmm1, xmm2
	shufps xmm1, xmm5, 8
	shufps xmm2, xmm5, 93
	shufps xmm0, xmm5, 168
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm1
	movaps xmmword ptr [rdi + 16], xmm2
	movaps xmmword ptr [rdi + 32], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:278
		}
	ret
