.section .text.gungraun::mat3_mul_transpose_vec3::__gungraun_wrapper_mod::mat3_mul_transpose_vec3,"ax",@progbits
	.p2align	4
.type	gungraun::mat3_mul_transpose_vec3::__gungraun_wrapper_mod::mat3_mul_transpose_vec3,@function
gungraun::mat3_mul_transpose_vec3::__gungraun_wrapper_mod::mat3_mul_transpose_vec3:
	.cfi_startproc
		// src/f32/mat3.rs:718
		self.x_axis.dot(rhs),
	movss xmm3, dword ptr [rdx + 8]
	movss xmm0, dword ptr [rsi + 32]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulss xmm0, xmm3
		// src/f32/mat3.rs:718
		self.x_axis.dot(rhs),
	movsd xmm1, qword ptr [rdx]
	movups xmm4, xmmword ptr [rsi]
		// src/f32/mat3.rs:719
		self.y_axis.dot(rhs),
	movsd xmm2, qword ptr [rsi + 16]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm5, xmm1
	shufps xmm5, xmm1, 225
	movaps xmm6, xmm4
	unpcklps xmm6, xmm2
	shufps xmm2, xmm4, 229
	shufps xmm2, xmm4, 226
	shufps xmm4, xmm4, 237
	mulps xmm4, xmm5
	mulps xmm6, xmm1
	addps xmm6, xmm4
	unpcklps xmm3, xmm3
	mulps xmm2, xmm3
	addps xmm2, xmm6
	movss xmm3, dword ptr [rsi + 24]
	mulss xmm3, xmm1
	shufps xmm1, xmm1, 85
	mulss xmm1, dword ptr [rsi + 28]
	addss xmm1, xmm3
	addss xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm2
	movss dword ptr [rdi + 8], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:266
		}
	ret
