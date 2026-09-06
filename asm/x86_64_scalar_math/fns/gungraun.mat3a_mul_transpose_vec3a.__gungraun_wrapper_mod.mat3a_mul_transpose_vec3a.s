.section .text.gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a,@function
gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:794
		self.x_axis.dot(rhs),
	movups xmm0, xmmword ptr [rsi + 8]
	movss xmm3, dword ptr [rdx + 8]
	movss xmm1, dword ptr [rsi + 40]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulss xmm1, xmm3
		// src/f32/scalar/mat3a.rs:794
		self.x_axis.dot(rhs),
	movsd xmm4, qword ptr [rsi]
	movsd xmm2, qword ptr [rdx]
	movaps xmm5, xmm2
	shufps xmm5, xmm2, 225
		// src/f32/scalar/mat3a.rs:795
		self.y_axis.dot(rhs),
	movsd xmm6, qword ptr [rsi + 16]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm7, xmm6
	shufps xmm7, xmm4, 16
	shufps xmm7, xmm4, 226
	mulps xmm7, xmm5
	shufps xmm6, xmm4, 1
	shufps xmm6, xmm4, 226
	mulps xmm6, xmm2
	addps xmm6, xmm7
	unpcklps xmm3, xmm3
	movss xmm4, dword ptr [rsi + 24]
	unpcklps xmm0, xmm4
	mulps xmm0, xmm3
	addps xmm0, xmm6
	movss xmm3, dword ptr [rsi + 32]
	mulss xmm3, xmm2
	shufps xmm2, xmm2, 85
	mulss xmm2, dword ptr [rsi + 36]
	addss xmm2, xmm3
	addss xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm0
	movss dword ptr [rdi + 8], xmm2
	movss dword ptr [rdi + 12], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:316
		}
	ret
