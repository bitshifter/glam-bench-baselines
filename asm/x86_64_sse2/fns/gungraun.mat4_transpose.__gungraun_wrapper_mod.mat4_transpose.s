.section .text.gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose,@function
gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose:
	.cfi_startproc
		// src/f32/sse2/mat4.rs:621
		let tmp0 = _mm_shuffle_ps(self.x_axis.0, self.y_axis.0, 0b01_00_01_00);
	movaps xmm0, xmmword ptr [rsi]
	movaps xmm1, xmmword ptr [rsi + 16]
		// src/f32/sse2/mat4.rs:623
		let tmp2 = _mm_shuffle_ps(self.z_axis.0, self.w_axis.0, 0b01_00_01_00);
	movaps xmm2, xmmword ptr [rsi + 32]
	movaps xmm3, xmmword ptr [rsi + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm4, xmm0
	movlhps xmm4, xmm1
	unpckhpd xmm0, xmm1
	movaps xmm1, xmm2
	movlhps xmm1, xmm3
	unpckhpd xmm2, xmm3
	movaps xmm3, xmm4
	shufps xmm3, xmm1, 136
	shufps xmm4, xmm1, 221
	movaps xmm1, xmm0
	shufps xmm1, xmm2, 136
	shufps xmm0, xmm2, 221
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm3
	movaps xmmword ptr [rdi + 16], xmm4
	movaps xmmword ptr [rdi + 32], xmm1
	movaps xmmword ptr [rdi + 48], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:347
		}
	ret
