.section .text.gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse,@function
gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse:
	.cfi_startproc
		// src/f32/sse2/mat3a.rs:707
		let det = self.x_axis.dot(tmp0);
	movaps xmm5, xmmword ptr [rsi]
		// src/f32/sse2/mat3a.rs:706
		let tmp0 = self.y_axis.cross(self.z_axis);
	movaps xmm1, xmmword ptr [rsi + 16]
	movaps xmm3, xmmword ptr [rsi + 32]
		// src/f32/affine3a.rs:480
		let translation = -(matrix3 * self.translation);
	movaps xmm0, xmmword ptr [rsi + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm4, xmm1
	shufps xmm4, xmm1, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm2, xmm4
	mulps xmm2, xmm3
	movaps xmm6, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm7, xmm5
	shufps xmm7, xmm5, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm7
	mulps xmm7, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm3, xmm3, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm6, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm2, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm2, xmm2, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm4, xmm5
	mulps xmm3, xmm5
	mulps xmm5, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm6, xmm5
	shufps xmm6, xmm5, 85
	addss xmm6, xmm5
	movhlps xmm5, xmm5
	addss xmm5, xmm6
	movss xmm6, dword ptr [rip + .LCPI223_0]
		// src/f32/sse2/mat3a.rs:717
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm6, xmm5
	shufps xmm6, xmm6, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm1, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm1, xmm1, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm3, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm3, xmm3, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm6
	mulps xmm3, xmm6
	mulps xmm1, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm4, xmm2
	movlhps xmm4, xmm3
	movhlps xmm3, xmm2
	movaps xmm2, xmm4
	shufps xmm2, xmm1, 8
	shufps xmm4, xmm1, 93
	shufps xmm3, xmm1, 168
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm5, xmm0
	shufps xmm5, xmm0, 21
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm5, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm5, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm0, xmm0, 42
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm0, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:323
		mem::transmute(simd_xor(a, b))
	xorps xmm0, xmmword ptr [rip + .LCPI223_1]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm2
	movaps xmmword ptr [rdi + 16], xmm4
	movaps xmmword ptr [rdi + 32], xmm3
	movaps xmmword ptr [rdi + 48], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:618
		}
	ret
