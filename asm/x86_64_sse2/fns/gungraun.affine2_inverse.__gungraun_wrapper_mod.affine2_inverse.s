.section .text.gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse,@function
gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse:
	.cfi_startproc
		// src/f32/sse2/mat2.rs:326
		let abcd = self.0;
	movaps xmm0, xmmword ptr [rsi]
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
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:114
		unsafe { simd_div(a, b) }
	movaps xmm1, xmmword ptr [rip + .LCPI208_0]
	divps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm0, xmm0, 39
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm1
		// src/f32/affine2.rs:324
		let translation = -(matrix2 * self.translation);
	movsd xmm1, qword ptr [rsi + 16]
	unpcklps xmm1, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:719
		fn neg(self) -> $t { -self }
	movaps xmm0, xmm1
	unpckhpd xmm0, xmm1
	addps xmm0, xmm1
	xorps xmm0, xmmword ptr [rip + .LCPI208_1]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi + 16], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:588
		}
	ret
