.section .text.gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2,@function
gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2:
	.cfi_startproc
		// benches/gungraun.rs:203
		black_box(m1 * m2)
	movups xmm0, xmmword ptr [rsi]
	movups xmm1, xmmword ptr [rdx]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	movaps xmm2, xmm1
	shufps xmm1, xmm1, 210
	mulps xmm1, xmm0
	shufps xmm0, xmm0, 78
	shufps xmm2, xmm2, 135
	mulps xmm2, xmm0
	addps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm1, xmm1, 198
	movups xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:204
		}
	ret
