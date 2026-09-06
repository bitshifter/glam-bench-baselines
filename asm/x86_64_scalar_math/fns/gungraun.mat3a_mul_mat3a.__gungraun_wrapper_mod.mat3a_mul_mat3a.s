.section .text.gungraun::mat3a_mul_mat3a::__gungraun_wrapper_mod::mat3a_mul_mat3a,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_mul_mat3a::__gungraun_wrapper_mod::mat3a_mul_mat3a,@function
gungraun::mat3a_mul_mat3a::__gungraun_wrapper_mod::mat3a_mul_mat3a:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:1032
		self.mul(rhs.x_axis),
	movsd xmm1, qword ptr [rsi + 32]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	movsd xmm2, qword ptr [rdx]
	movups xmm0, xmmword ptr [rdx + 4]
		// src/f32/scalar/mat3a.rs:1033
		self.mul(rhs.y_axis),
	movsd xmm3, qword ptr [rdx + 16]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	movaps xmm6, xmm2
	movlhps xmm6, xmm3
	shufps xmm6, xmm3, 8
	movaps xmm11, xmm2
	shufps xmm11, xmm3, 17
	shufps xmm11, xmm3, 88
	movss xmm4, dword ptr [rdx + 24]
	movss xmm3, dword ptr [rdx + 8]
	movaps xmm12, xmm3
	unpcklps xmm12, xmm4
	shufps xmm12, xmm12, 84
		// src/f32/scalar/mat3a.rs:1034
		self.mul(rhs.z_axis),
	movsd xmm10, qword ptr [rdx + 32]
		// src/f32/scalar/mat3a.rs:1032
		self.mul(rhs.x_axis),
	movsd xmm7, qword ptr [rsi]
	movsd xmm9, qword ptr [rsi + 4]
	movsd xmm5, qword ptr [rsi + 16]
	movsd xmm8, qword ptr [rsi + 20]
	movsd xmm4, qword ptr [rsi + 36]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	movaps xmm13, xmm9
	shufps xmm13, xmm7, 69
	shufps xmm13, xmm13, 120
	mulps xmm13, xmm6
	movaps xmm14, xmm8
	shufps xmm14, xmm5, 69
	shufps xmm14, xmm14, 120
	mulps xmm14, xmm11
	addps xmm14, xmm13
	movaps xmm6, xmm4
	shufps xmm6, xmm1, 69
	shufps xmm6, xmm6, 120
	mulps xmm6, xmm12
	addps xmm6, xmm14
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	movaps xmm11, xmm5
	shufps xmm11, xmm8, 64
	movss xmm12, dword ptr [rip + .LCPI214_0]
	movss xmm11, xmm12
	movss xmm13, dword ptr [rip + .LCPI214_1]
	movaps xmm14, xmm13
	shufps xmm14, xmm10, 212
	shufps xmm14, xmm10, 88
	mulps xmm14, xmm11
	movaps xmm11, xmm7
	shufps xmm11, xmm6, 48
	shufps xmm11, xmm9, 66
	movlhps xmm13, xmm10
	shufps xmm13, xmm10, 8
	mulps xmm13, xmm11
	addps xmm13, xmm14
	movaps xmm11, xmm1
	shufps xmm11, xmm4, 64
	movss xmm11, xmm12
	movss xmm12, dword ptr [rdx + 40]
	movaps xmm10, xmmword ptr [rip + .LCPI214_2]
	unpcklps xmm10, xmm12
	shufps xmm10, xmm10, 84
	mulps xmm10, xmm11
	addps xmm10, xmm13
	unpcklps xmm7, xmm9
	unpcklps xmm2, xmm2
	mulps xmm2, xmm7
	unpcklps xmm5, xmm8
	unpcklps xmm0, xmm0
	mulps xmm0, xmm5
	addps xmm0, xmm2
	unpcklps xmm1, xmm4
	unpcklps xmm3, xmm3
	mulps xmm3, xmm1
	addps xmm3, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm3
	movss dword ptr [rdi + 8], xmm6
	movups xmmword ptr [rdi + 12], xmm6
	movups xmmword ptr [rdi + 28], xmm10
	shufps xmm10, xmm10, 255
	movss dword ptr [rdi + 44], xmm10
	#APP
	#NO_APP
		// benches/gungraun.rs:304
		}
	ret
