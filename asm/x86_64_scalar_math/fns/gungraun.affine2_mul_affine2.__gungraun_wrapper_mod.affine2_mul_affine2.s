.section .text.gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2,"ax",@progbits
	.p2align	4
.type	gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2,@function
gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2:
	.cfi_startproc
		// src/f32/affine2.rs:412
		matrix2: self.matrix2 * rhs.matrix2,
	movups xmm0, xmmword ptr [rsi]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 156
	movups xmm2, xmmword ptr [rdx]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	movaps xmm3, xmm1
	mulps xmm3, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm3, xmm3, 180
	shufps xmm2, xmm2, 225
	movaps xmm4, xmm0
	shufps xmm4, xmm0, 198
	mulps xmm4, xmm2
	addps xmm4, xmm3
	movups xmmword ptr [rdi], xmm4
		// src/f32/affine2.rs:413
		translation: self.matrix2 * rhs.translation + self.translation,
	movsd xmm2, qword ptr [rdx + 16]
	movsd xmm3, qword ptr [rsi + 16]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	shufps xmm0, xmm0, 230
	mulps xmm1, xmm2
	shufps xmm2, xmm2, 225
	mulps xmm2, xmm0
	addps xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm2, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi + 16], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:594
		}
	ret
