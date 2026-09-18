.section .text.gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse,@function
gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:695
		let tmp0 = self.y_axis.cross(self.z_axis);
	movss xmm5, dword ptr [rsi + 24]
		// src/f32/scalar/mat3a.rs:696
		let det = self.x_axis.dot(tmp0);
	movss xmm0, dword ptr [rsi + 8]
		// src/f32/scalar/mat3a.rs:695
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm6, qword ptr [rsi + 16]
	movss xmm3, dword ptr [rsi + 20]
	movsd xmm8, qword ptr [rsi + 32]
	movaps xmm7, xmm8
	shufps xmm7, xmm8, 225
		// src/f32/scalar/mat3a.rs:696
		let det = self.x_axis.dot(tmp0);
	movsd xmm12, qword ptr [rsi]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movss xmm9, dword ptr [rsi + 40]
	movaps xmm1, xmm9
	shufps xmm1, xmm9, 0
	movaps xmm2, xmm5
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm10, xmm12
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm13, xmm12
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm11, xmm12
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm4, xmm5
	movaps xmm14, xmm3
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mulss xmm5, xmm12
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm3, xmm12
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	shufps xmm12, xmm6, 16
	shufps xmm12, xmm6, 226
	mulps xmm1, xmm12
	unpcklps xmm2, xmm0
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	shufps xmm11, xmm6, 1
	shufps xmm11, xmm6, 226
	mulps xmm11, xmm7
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mulps xmm7, xmm2
	subps xmm1, xmm7
		// src/f32/affine3a.rs:480
		let translation = -(matrix3 * self.translation);
	movss xmm7, dword ptr [rsi + 56]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movss xmm13, xmm9
	movlhps xmm9, xmm6
	shufps xmm9, xmm6, 226
	mulps xmm9, xmm13
		// src/f32/scalar/mat3a.rs:696
		let det = self.x_axis.dot(tmp0);
	movss xmm13, dword ptr [rsi + 4]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulss xmm10, xmm1
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mulps xmm2, xmm8
	subps xmm2, xmm9
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mulps xmm12, xmm8
	subps xmm11, xmm12
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm8, xmm11
	mulss xmm8, xmm0
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mulss xmm4, xmm13
	mulss xmm14, xmm0
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mulss xmm0, xmm6
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm6, xmm13
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulss xmm13, xmm2
	addss xmm13, xmm10
	addss xmm8, xmm13
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	subss xmm4, xmm14
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	subss xmm0, xmm5
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	subss xmm3, xmm6
	movss xmm5, dword ptr [rip + .LCPI225_0]
		// src/f32/scalar/mat3a.rs:706
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm5, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm6, xmm5
	shufps xmm6, xmm5, 0
	mulps xmm2, xmm6
	mulps xmm1, xmm6
	mulps xmm6, xmm11
	mulss xmm4, xmm5
	mulss xmm0, xmm5
	mulss xmm5, xmm3
		// src/f32/affine3a.rs:480
		let translation = -(matrix3 * self.translation);
	movsd xmm8, qword ptr [rsi + 48]
	movaps xmm3, xmm8
	shufps xmm3, xmm8, 225
		// src/f32/scalar/mat3a.rs:871
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	mulps xmm3, xmm2
	movaps xmm9, xmm8
	mulps xmm9, xmm1
	addps xmm9, xmm3
	movaps xmm3, xmm7
	unpcklps xmm3, xmm7
	mulps xmm3, xmm6
	addps xmm3, xmm9
		// src/f32/scalar/mat3a.rs:873
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	movaps xmm9, xmm8
	mulss xmm9, xmm4
	shufps xmm8, xmm8, 85
	mulss xmm8, xmm0
	addss xmm8, xmm9
	mulss xmm7, xmm5
	addss xmm7, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:719
		fn neg(self) -> $t { -self }
	movaps xmm8, xmmword ptr [rip + .LCPI225_1]
	xorps xmm3, xmm8
	xorps xmm7, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi], xmm1
	movaps xmm8, xmm2
	shufps xmm8, xmm2, 85
	movss dword ptr [rdi + 4], xmm8
	movss dword ptr [rdi + 8], xmm4
	movss dword ptr [rdi + 12], xmm4
	movss dword ptr [rdi + 16], xmm2
	shufps xmm1, xmm1, 85
	movss dword ptr [rdi + 20], xmm1
	movss dword ptr [rdi + 24], xmm0
	movss dword ptr [rdi + 28], xmm0
	movlps qword ptr [rdi + 32], xmm6
	movss dword ptr [rdi + 40], xmm5
	movss dword ptr [rdi + 44], xmm5
	movlps qword ptr [rdi + 48], xmm3
	movss dword ptr [rdi + 56], xmm7
	movss dword ptr [rdi + 60], xmm7
	#APP
	#NO_APP
		// benches/gungraun.rs:618
		}
	ret
