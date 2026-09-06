.section .text.gungraun::mat2_determinant::__gungraun_wrapper_mod::mat2_determinant,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_determinant::__gungraun_wrapper_mod::mat2_determinant,@function
gungraun::mat2_determinant::__gungraun_wrapper_mod::mat2_determinant:
	.cfi_startproc
		// src/f32/scalar/mat2.rs:286
		self.x_axis.x * self.y_axis.y - self.x_axis.y * self.y_axis.x
	movsd xmm0, qword ptr [rdi]
	movsd xmm1, qword ptr [rdi + 8]
	shufps xmm1, xmm1, 225
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 85
	subss xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rsp - 4], xmm1
	lea rax, [rsp - 4]
	#APP
	#NO_APP
		// benches/gungraun.rs:172
		}
	movss xmm0, dword ptr [rsp - 4]
	ret
