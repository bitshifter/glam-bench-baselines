.section .text.gungraun::mat3a_mul_vec3a::__gungraun_wrapper_mod::mat3a_mul_vec3a,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_mul_vec3a::__gungraun_wrapper_mod::mat3a_mul_vec3a,@function
gungraun::mat3a_mul_vec3a::__gungraun_wrapper_mod::mat3a_mul_vec3a:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	movss xmm2, dword ptr [rdx]
	movss xmm0, dword ptr [rdx + 4]
	movss xmm1, dword ptr [rdx + 8]
	movss xmm3, dword ptr [rsi + 8]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	mulss xmm3, xmm2
	movss xmm4, dword ptr [rsi + 24]
	mulss xmm4, xmm0
	addss xmm4, xmm3
	movss xmm3, dword ptr [rsi + 40]
	mulss xmm3, xmm1
	addss xmm3, xmm4
		// benches/gungraun.rs:309
		black_box(m * v)
	movsd xmm4, qword ptr [rsi]
	movsd xmm5, qword ptr [rsi + 16]
	movsd xmm6, qword ptr [rsi + 32]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	unpcklps xmm2, xmm2
	mulps xmm2, xmm4
	unpcklps xmm0, xmm0
	mulps xmm0, xmm5
	addps xmm0, xmm2
	unpcklps xmm1, xmm1
	mulps xmm1, xmm6
	addps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm1
	movss dword ptr [rdi + 8], xmm3
	movss dword ptr [rdi + 12], xmm3
	#APP
	#NO_APP
		// benches/gungraun.rs:310
		}
	ret
