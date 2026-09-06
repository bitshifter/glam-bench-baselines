.section .text.gungraun::mat3a_determinant::__gungraun_wrapper_mod::mat3a_determinant,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_determinant::__gungraun_wrapper_mod::mat3a_determinant,@function
gungraun::mat3a_determinant::__gungraun_wrapper_mod::mat3a_determinant:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:583
		self.z_axis.dot(self.x_axis.cross(self.y_axis))
	movss xmm0, dword ptr [rdi + 8]
	movss xmm1, dword ptr [rdi + 24]
	movsd xmm2, qword ptr [rdi + 36]
	movsd xmm3, qword ptr [rdi]
	movsd xmm4, qword ptr [rdi + 16]
	movss xmm5, dword ptr [rdi + 4]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mulss xmm5, xmm1
	movss xmm6, dword ptr [rdi + 20]
	mulss xmm6, xmm0
	subss xmm5, xmm6
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm6, xmm3
	shufps xmm6, xmm3, 0
	movss xmm6, xmm0
	mulps xmm6, xmm4
	shufps xmm4, xmm4, 0
	movss xmm4, xmm1
	mulps xmm4, xmm3
	subps xmm6, xmm4
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulps xmm6, xmm2
	mulss xmm5, dword ptr [rdi + 32]
	addss xmm5, xmm6
	shufps xmm6, xmm6, 85
	addss xmm6, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rsp - 4], xmm6
	lea rax, [rsp - 4]
	#APP
	#NO_APP
		// benches/gungraun.rs:272
		}
	movss xmm0, dword ptr [rsp - 4]
	ret
