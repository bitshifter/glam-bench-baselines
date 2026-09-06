.section .text.gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose,@function
gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose:
	.cfi_startproc
		// src/f32/sse2/mat3a.rs:572
		let tmp0 = _mm_shuffle_ps(self.x_axis.0, self.y_axis.0, 0b01_00_01_00);
	movaps xmm0, xmmword ptr [rsi]
	movaps xmm1, xmmword ptr [rsi + 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm0
	movlhps xmm2, xmm1
	unpckhpd xmm0, xmm1
		// src/f32/sse2/mat3a.rs:576
		x_axis: Vec3A(_mm_shuffle_ps(tmp0, self.z_axis.0, 0b00_00_10_00)),
	movaps xmm1, xmmword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm3, xmm2
	shufps xmm3, xmm1, 8
	shufps xmm2, xmm1, 93
	shufps xmm0, xmm1, 168
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm3
	movaps xmmword ptr [rdi + 16], xmm2
	movaps xmmword ptr [rdi + 32], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:291
		}
	ret
