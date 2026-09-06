.section .text.gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,@function
gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	movss xmm3, dword ptr [rsi + 32]
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	movss xmm7, dword ptr [rsi]
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm8, qword ptr [rsi + 20]
	movss xmm5, dword ptr [rsi + 24]
	movsd xmm0, qword ptr [rsi + 36]
	movaps xmm2, xmm0
	shufps xmm2, xmm0, 225
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	movsd xmm11, qword ptr [rsi + 4]
	movss xmm6, dword ptr [rsi + 8]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm1, xmm5
	mulss xmm1, xmm11
	movaps xmm4, xmm8
	mulss xmm4, xmm6
	subss xmm1, xmm4
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm9, xmm3
	mulss xmm9, xmm1
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movss xmm13, dword ptr [rsi + 16]
	movaps xmm10, xmm13
	movlhps xmm10, xmm8
	shufps xmm10, xmm8, 226
	movaps xmm4, xmm7
	unpcklps xmm4, xmm6
	mulps xmm4, xmm10
	movaps xmm10, xmm13
	unpcklps xmm10, xmm7
	movaps xmm12, xmm5
	movlhps xmm12, xmm11
	shufps xmm12, xmm11, 226
	mulps xmm12, xmm10
	subps xmm4, xmm12
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm10, xmm2
	mulps xmm10, xmm4
	movaps xmm12, xmm10
	shufps xmm12, xmm10, 85
	addss xmm12, xmm9
	addss xmm12, xmm10
	xorps xmm9, xmm9
	xorps xmm10, xmm10
		// src/f32/scalar/mat3a.rs:605
		if det == 0.0 {
	ucomiss xmm12, xmm10
	xorps xmm14, xmm14
	xorps xmm10, xmm10
	jne .LBB254_1
	jnp .LBB254_2
.LBB254_1:
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm9, xmm11
	shufps xmm9, xmm8, 1
	shufps xmm9, xmm8, 226
	mulps xmm9, xmm2
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm10, xmm0
	unpcklps xmm10, xmm11
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	shufps xmm11, xmm8, 16
	shufps xmm11, xmm8, 226
	mulps xmm11, xmm0
	subps xmm9, xmm11
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm11, xmm3
	movlhps xmm11, xmm13
	shufps xmm11, xmm13, 226
	mulps xmm10, xmm11
	movaps xmm13, xmm2
	shufps xmm13, xmm8, 1
	shufps xmm13, xmm8, 226
	unpcklps xmm3, xmm7
	mulps xmm13, xmm3
	subps xmm10, xmm13
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movss xmm0, xmm5
	mulps xmm0, xmm3
	unpcklps xmm2, xmm6
	mulps xmm2, xmm11
	subps xmm0, xmm2
	movss xmm2, dword ptr [rip + .LCPI254_0]
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm2, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm9, xmm1, 4
	shufps xmm2, xmm2, 0
	mulps xmm9, xmm2
	shufps xmm0, xmm4, 84
	mulps xmm0, xmm2
	shufps xmm10, xmm4, 4
	mulps xmm10, xmm2
	movaps xmm14, xmm0
.LBB254_2:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm9
	movaps xmmword ptr [rdi + 16], xmm14
	movaps xmmword ptr [rdi + 32], xmm10
	#APP
	#NO_APP
		// benches/gungraun.rs:285
		}
	ret
