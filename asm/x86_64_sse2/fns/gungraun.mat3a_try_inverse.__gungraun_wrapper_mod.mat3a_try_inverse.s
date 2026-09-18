.section .text.gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse,@function
gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse:
	.cfi_startproc
		// src/f32/sse2/mat3a.rs:707
		let det = self.x_axis.dot(tmp0);
	movaps xmm3, xmmword ptr [rsi]
		// src/f32/sse2/mat3a.rs:706
		let tmp0 = self.y_axis.cross(self.z_axis);
	movaps xmm1, xmmword ptr [rsi + 16]
	movaps xmm5, xmmword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm4, xmm1
	shufps xmm4, xmm1, 210
	movaps xmm0, xmm5
	shufps xmm0, xmm5, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm2, xmm4
	mulps xmm2, xmm5
	movaps xmm6, xmm1
	mulps xmm6, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm2, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm2, xmm2, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm6, xmm3
	mulps xmm6, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm7, xmm6
	shufps xmm7, xmm6, 85
	addss xmm7, xmm6
	movhlps xmm6, xmm6
	addss xmm6, xmm7
	xorps xmm7, xmm7
		// src/f32/sse2/mat3a.rs:709
		if det == 0.0 {
	ucomiss xmm6, xmm7
	jne .LBB239_2
	jp .LBB239_2
	xor eax, eax
	jmp .LBB239_3
.LBB239_2:
	movss xmm7, dword ptr [rip + .LCPI239_0]
		// src/f32/sse2/mat3a.rs:717
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm7, xmm6
	shufps xmm7, xmm7, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm6, xmm3
	shufps xmm6, xmm3, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm3
	mulps xmm5, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm0, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm0, xmm0, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm6
	mulps xmm4, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm1, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm1, xmm1, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm7
	mulps xmm0, xmm7
	mulps xmm1, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm3, xmm2
	movlhps xmm3, xmm0
	movhlps xmm0, xmm2
	movaps xmm2, xmm3
	shufps xmm2, xmm1, 8
	shufps xmm3, xmm1, 93
	shufps xmm0, xmm1, 168
	mov eax, 1
.LBB239_3:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov qword ptr [rdi], rax
	mov qword ptr [rdi + 8], 0
	movaps xmmword ptr [rdi + 16], xmm2
	movaps xmmword ptr [rdi + 32], xmm3
	movaps xmmword ptr [rdi + 48], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:298
		}
	ret
