.section .text.gungraun::mat2_mul_transpose_vec2::__gungraun_wrapper_mod::mat2_mul_transpose_vec2,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_mul_transpose_vec2::__gungraun_wrapper_mod::mat2_mul_transpose_vec2,@function
gungraun::mat2_mul_transpose_vec2::__gungraun_wrapper_mod::mat2_mul_transpose_vec2:
	.cfi_startproc
		// src/f32/sse2/mat2.rs:398
		Vec2::new(self.x_axis.dot(rhs), self.y_axis.dot(rhs))
	movsd xmm2, qword ptr [rdi + 4]
	movaps xmm3, xmmword ptr [rdi]
	shufps xmm3, xmm3, 236
		// src/f32/vec2.rs:188
		(self.x * rhs.x) + (self.y * rhs.y)
	movaps xmm4, xmm1
	unpcklps xmm4, xmm0
	mulps xmm4, xmm2
	unpcklps xmm0, xmm1
	mulps xmm0, xmm3
	addps xmm0, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rsp - 8], xmm0
	lea rax, [rsp - 8]
	#APP
	#NO_APP
		// benches/gungraun.rs:216
		}
	movss xmm0, dword ptr [rsp - 8]
	movss xmm1, dword ptr [rsp - 4]
	ret
