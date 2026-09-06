.section .text.gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse,@function
gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse:
	.cfi_startproc
		// src/f32/scalar/mat2.rs:286
		self.x_axis.x * self.y_axis.y - self.x_axis.y * self.y_axis.x
	movss xmm0, dword ptr [rsi]
	movss xmm1, dword ptr [rsi + 12]
	movaps xmm2, xmm0
	mulss xmm2, xmm1
	movsd xmm3, qword ptr [rsi + 4]
	movaps xmm4, xmm3
	shufps xmm4, xmm3, 85
	mulss xmm4, xmm3
	subss xmm2, xmm4
	movss xmm4, dword ptr [rip + .LCPI210_0]
		// src/f32/scalar/mat2.rs:311
		let inv_det = 1.0 / det;
	divss xmm4, xmm2
		// src/f32/scalar/mat2.rs:316
		self.y_axis.x * -inv_det,
	shufps xmm4, xmm4, 0
	movaps xmm2, xmmword ptr [rip + .LCPI210_1]
	xorps xmm2, xmm4
	mulps xmm2, xmm3
		// src/f32/scalar/mat2.rs:314
		self.y_axis.y * inv_det,
	unpcklps xmm0, xmm1
	mulps xmm0, xmm4
		// src/f32/affine2.rs:324
		let translation = -(matrix2 * self.translation);
	movsd xmm1, qword ptr [rsi + 16]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	movaps xmm3, xmm1
	mulps xmm3, xmm2
	shufps xmm1, xmm1, 225
	mulps xmm1, xmm0
	addps xmm1, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm0, xmm2, 65
	shufps xmm0, xmm0, 120
	movups xmmword ptr [rdi], xmm0
	shufps xmm1, xmm1, 225
	xorps xmm1, xmmword ptr [rip + .LCPI210_1]
	movlps qword ptr [rdi + 16], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:588
		}
	ret
