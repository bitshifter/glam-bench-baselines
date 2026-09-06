.section .text.gungraun::affine2_transform_vector2::__gungraun_wrapper_mod::affine2_transform_vector2,"ax",@progbits
	.p2align	4
.type	gungraun::affine2_transform_vector2::__gungraun_wrapper_mod::affine2_transform_vector2,@function
gungraun::affine2_transform_vector2::__gungraun_wrapper_mod::affine2_transform_vector2:
	.cfi_startproc
		// src/f32/affine2.rs:280
		self.matrix2 * rhs
	movsd xmm2, qword ptr [rdi]
	movsd xmm3, qword ptr [rdi + 8]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	unpcklps xmm0, xmm0
	mulps xmm0, xmm2
	unpcklps xmm1, xmm1
	mulps xmm1, xmm3
	addps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rsp - 8], xmm1
	lea rax, [rsp - 8]
	#APP
	#NO_APP
		// benches/gungraun.rs:606
		}
	movss xmm0, dword ptr [rsp - 8]
	movss xmm1, dword ptr [rsp - 4]
	ret
