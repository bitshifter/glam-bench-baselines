.section .text.gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,@function
gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	movss xmm7, dword ptr [rsi + 16]
	movss xmm8, dword ptr [rsi + 32]
	movsd xmm9, qword ptr [rsi + 20]
	movss xmm5, dword ptr [rsi + 24]
	movsd xmm2, qword ptr [rsi + 36]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm11, xmm2
	shufps xmm11, xmm2, 85
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	movsd xmm6, qword ptr [rsi + 4]
	movss xmm0, dword ptr [rsi + 8]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm1, xmm2
	shufps xmm1, xmm2, 225
	movaps xmm3, xmm6
	shufps xmm3, xmm9, 1
	shufps xmm3, xmm9, 226
	mulps xmm3, xmm1
	movaps xmm1, xmm6
	shufps xmm1, xmm9, 16
	shufps xmm1, xmm9, 226
	mulps xmm1, xmm2
	subps xmm3, xmm1
	movaps xmm1, xmm5
	mulss xmm1, xmm6
	movaps xmm4, xmm9
	mulss xmm4, xmm0
	subss xmm1, xmm4
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm10, xmm8
	mulss xmm10, xmm1
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm4, xmm2
	movss xmm4, xmm5
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movss xmm12, dword ptr [rsi]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm13, xmm8
	unpcklps xmm13, xmm12
	mulps xmm4, xmm13
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm14, xmm7
	unpcklps xmm14, xmm8
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mulss xmm8, xmm0
	mulss xmm11, xmm7
	unpcklps xmm11, xmm8
	subps xmm4, xmm11
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm8, xmm2
	unpcklps xmm8, xmm6
	mulps xmm8, xmm14
	unpcklps xmm9, xmm2
	mulps xmm9, xmm13
	subps xmm8, xmm9
	movsd xmm9, qword ptr [rsi + 16]
	unpcklps xmm0, xmm12
	mulps xmm0, xmm9
	unpcklps xmm12, xmm7
	shufps xmm6, xmm6, 0
	movss xmm6, xmm5
	mulps xmm6, xmm12
	subps xmm0, xmm6
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulps xmm2, xmm0
	addss xmm10, xmm2
	shufps xmm2, xmm2, 85
	addss xmm2, xmm10
	movss xmm5, dword ptr [rip + .LCPI184_0]
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm5, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movlhps xmm1, xmm5
	shufps xmm2, xmm1, 36
	movsd xmm2, xmm3
	shufps xmm1, xmm1, 138
	mulps xmm1, xmm2
	movaps xmm2, xmm0
	movlhps xmm2, xmm5
	shufps xmm4, xmm2, 36
	shufps xmm2, xmm2, 138
	mulps xmm2, xmm4
	shufps xmm0, xmm5, 197
	shufps xmm3, xmm0, 36
	movsd xmm3, xmm8
	shufps xmm0, xmm0, 138
	mulps xmm0, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm1
	movaps xmmword ptr [rdi + 16], xmm2
	movaps xmmword ptr [rdi + 32], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:278
		}
	ret
