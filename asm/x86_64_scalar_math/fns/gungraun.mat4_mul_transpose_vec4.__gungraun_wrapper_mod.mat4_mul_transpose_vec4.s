.section .text.gungraun::mat4_mul_transpose_vec4::__gungraun_wrapper_mod::mat4_mul_transpose_vec4,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_mul_transpose_vec4::__gungraun_wrapper_mod::mat4_mul_transpose_vec4,@function
gungraun::mat4_mul_transpose_vec4::__gungraun_wrapper_mod::mat4_mul_transpose_vec4:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:1375
		self.x_axis.dot(rhs),
	movups xmm0, xmmword ptr [rdx]
	movsd xmm5, qword ptr [rdx]
	movaps xmm6, xmm5
	shufps xmm6, xmm5, 17
	movups xmm2, xmmword ptr [rsi]
	movups xmm1, xmmword ptr [rsi + 16]
	movups xmm3, xmmword ptr [rsi + 32]
	movups xmm4, xmmword ptr [rsi + 48]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	movaps xmm7, xmm4
	shufps xmm7, xmm3, 16
	movaps xmm8, xmm1
	shufps xmm8, xmm2, 16
	shufps xmm8, xmm7, 34
	mulps xmm8, xmm6
	movlhps xmm5, xmm5
	movaps xmm6, xmm4
	shufps xmm6, xmm3, 1
	movaps xmm7, xmm1
	shufps xmm7, xmm2, 1
	shufps xmm7, xmm6, 34
	mulps xmm7, xmm5
	addps xmm7, xmm8
	movaps xmm5, xmm0
	shufps xmm5, xmm0, 170
	movaps xmm6, xmm4
	unpckhpd xmm6, xmm3
	movaps xmm8, xmm2
	unpckhps xmm8, xmm1
	shufps xmm8, xmm6, 36
	mulps xmm8, xmm5
	addps xmm8, xmm7
	shufps xmm0, xmm0, 255
	unpckhps xmm3, xmm4
	shufps xmm1, xmm2, 51
	shufps xmm1, xmm3, 226
	mulps xmm1, xmm0
	addps xmm1, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:372
		}
	ret
