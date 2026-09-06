.section .text.gungraun::mat2_inverse::__gungraun_wrapper_mod::mat2_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_inverse::__gungraun_wrapper_mod::mat2_inverse,@function
gungraun::mat2_inverse::__gungraun_wrapper_mod::mat2_inverse:
	.cfi_startproc
		// src/f32/scalar/mat2.rs:286
		self.x_axis.x * self.y_axis.y - self.x_axis.y * self.y_axis.x
	movups xmm0, xmmword ptr [rsi]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 235
	mulps xmm1, xmm0
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 85
	subss xmm1, xmm2
	movss xmm2, dword ptr [rip + .LCPI164_0]
		// src/f32/scalar/mat2.rs:311
		let inv_det = 1.0 / det;
	divss xmm2, xmm1
	movaps xmm1, xmmword ptr [rip + .LCPI164_1]
		// src/f32/scalar/mat2.rs:315
		self.x_axis.y * -inv_det,
	xorps xmm1, xmm2
		// src/f32/scalar/mat2.rs:314
		self.y_axis.y * inv_det,
	unpcklps xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm0, xmm0, 39
	shufps xmm2, xmm2, 20
	mulps xmm2, xmm0
	movups xmmword ptr [rdi], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:178
		}
	ret
