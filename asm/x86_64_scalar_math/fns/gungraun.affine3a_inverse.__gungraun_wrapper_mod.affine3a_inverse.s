.section .text.gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse,@function
gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	movss xmm4, dword ptr [rsi + 40]
		// src/f32/affine3a.rs:480
		let translation = -(matrix3 * self.translation);
	movss xmm0, dword ptr [rsi + 56]
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	movsd xmm7, qword ptr [rsi]
	movsd xmm9, qword ptr [rsi + 4]
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm6, qword ptr [rsi + 16]
	movsd xmm3, qword ptr [rsi + 20]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm8, xmm4
	movlhps xmm8, xmm6
	shufps xmm8, xmm6, 226
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm10, xmm4
	shufps xmm10, xmm6, 212
	shufps xmm10, xmm6, 226
	movaps xmm1, xmm4
	unpcklps xmm1, xmm7
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm5, xmm7
	shufps xmm5, xmm6, 1
	shufps xmm5, xmm6, 226
	movaps xmm11, xmm7
	shufps xmm11, xmm6, 16
	shufps xmm11, xmm6, 226
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm2, xmm6
	shufps xmm2, xmm3, 16
	shufps xmm2, xmm3, 226
	mulps xmm2, xmm9
	movaps xmm12, xmm7
	shufps xmm12, xmm9, 16
	shufps xmm12, xmm9, 226
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm6, xmm9
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	shufps xmm9, xmm3, 17
	shufps xmm9, xmm3, 226
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mulps xmm12, xmm3
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm3, xmm7
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm13, xmm7
	movss xmm13, xmm4
	mulps xmm13, xmm8
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm8, qword ptr [rsi + 32]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mulps xmm1, xmm10
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	movaps xmm10, xmm8
	shufps xmm10, xmm8, 225
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mulps xmm5, xmm10
	mulps xmm11, xmm8
	subps xmm5, xmm11
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm7, xmm8
	mulps xmm7, xmm9
	subps xmm7, xmm13
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mulps xmm9, xmm10
	subps xmm1, xmm9
	subps xmm2, xmm12
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	subss xmm3, xmm6
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulps xmm8, xmm2
	movaps xmm6, xmm8
	shufps xmm6, xmm8, 85
	addss xmm6, xmm8
	mulss xmm4, xmm3
	addss xmm4, xmm6
	movss xmm6, dword ptr [rip + .LCPI224_0]
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm6, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm4, xmm6
	shufps xmm4, xmm6, 0
	mulps xmm7, xmm4
	mulps xmm1, xmm4
	mulps xmm4, xmm5
	movaps xmm5, xmm2
	mulss xmm5, xmm6
	shufps xmm2, xmm2, 85
	mulss xmm2, xmm6
	mulss xmm6, xmm3
		// src/f32/affine3a.rs:480
		let translation = -(matrix3 * self.translation);
	movsd xmm8, qword ptr [rsi + 48]
	movaps xmm3, xmm8
	shufps xmm3, xmm8, 225
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	mulps xmm3, xmm7
	movaps xmm9, xmm8
	mulps xmm9, xmm1
	addps xmm9, xmm3
	movaps xmm3, xmm0
	unpcklps xmm3, xmm0
	mulps xmm3, xmm4
	addps xmm3, xmm9
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	movaps xmm9, xmm8
	mulss xmm9, xmm5
	shufps xmm8, xmm8, 85
	mulss xmm8, xmm2
	addss xmm8, xmm9
	mulss xmm0, xmm6
	addss xmm0, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:719
		fn neg(self) -> $t { -self }
	movaps xmm8, xmmword ptr [rip + .LCPI224_1]
	xorps xmm3, xmm8
	xorps xmm0, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi], xmm1
	movaps xmm8, xmm7
	shufps xmm8, xmm7, 85
	movss dword ptr [rdi + 4], xmm8
	movss dword ptr [rdi + 8], xmm5
	movss dword ptr [rdi + 12], xmm5
	movss dword ptr [rdi + 16], xmm7
	shufps xmm1, xmm1, 85
	movss dword ptr [rdi + 20], xmm1
	movss dword ptr [rdi + 24], xmm2
	movss dword ptr [rdi + 28], xmm2
	movlps qword ptr [rdi + 32], xmm4
	movss dword ptr [rdi + 40], xmm6
	movss dword ptr [rdi + 44], xmm6
	movlps qword ptr [rdi + 48], xmm3
	movss dword ptr [rdi + 56], xmm0
	movss dword ptr [rdi + 60], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:612
		}
	ret
