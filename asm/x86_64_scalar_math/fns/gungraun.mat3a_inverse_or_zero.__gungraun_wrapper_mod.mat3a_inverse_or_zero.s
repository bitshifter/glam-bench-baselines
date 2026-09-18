.section .text.gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,@function
gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:695
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm5, qword ptr [rsi + 16]
	movsd xmm3, qword ptr [rsi + 32]
	movsd xmm4, qword ptr [rsi + 20]
	movsd xmm6, qword ptr [rsi + 36]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm0, xmm5
	mulps xmm0, xmm6
	movaps xmm1, xmm4
	mulps xmm1, xmm3
	subps xmm0, xmm1
		// src/f32/scalar/mat3a.rs:696
		let det = self.x_axis.dot(tmp0);
	movsd xmm2, qword ptr [rsi]
	movss xmm7, dword ptr [rsi + 8]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm1, xmm4
	unpcklps xmm1, xmm3
	movss xmm8, dword ptr [rsi + 24]
	movss xmm9, dword ptr [rsi + 40]
	unpcklps xmm9, xmm8
	mulps xmm1, xmm9
	shufps xmm9, xmm9, 225
	movaps xmm8, xmm6
	unpcklps xmm8, xmm5
	mulps xmm8, xmm9
	subps xmm1, xmm8
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm8, xmm2
	mulps xmm8, xmm1
	movaps xmm9, xmm8
	shufps xmm9, xmm8, 85
	addss xmm9, xmm8
	movaps xmm8, xmm0
	mulss xmm8, xmm7
	addss xmm8, xmm9
	xorps xmm11, xmm11
	xorps xmm9, xmm9
		// src/f32/scalar/mat3a.rs:698
		if det == 0.0 {
	ucomiss xmm8, xmm9
	xorps xmm9, xmm9
	xorps xmm10, xmm10
	jne .LBB257_1
	jnp .LBB257_2
.LBB257_1:
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm10, xmm5
	shufps xmm10, xmm3, 1
	shufps xmm10, xmm3, 226
	movaps xmm9, xmm2
	shufps xmm9, xmm2, 225
	mulps xmm9, xmm10
	movaps xmm10, xmm5
	shufps xmm10, xmm3, 16
	shufps xmm10, xmm3, 226
	mulps xmm10, xmm2
	subps xmm9, xmm10
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm11, xmm4
	shufps xmm11, xmm6, 1
	shufps xmm11, xmm6, 226
	movaps xmm10, xmm2
	movss xmm10, xmm7
	mulps xmm10, xmm11
	movaps xmm11, xmm4
	shufps xmm11, xmm6, 16
	shufps xmm11, xmm6, 226
	movaps xmm12, xmm7
	shufps xmm12, xmm2, 212
	shufps xmm12, xmm2, 82
	mulps xmm12, xmm11
	subps xmm10, xmm12
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movss xmm4, xmm7
	shufps xmm7, xmm6, 212
	shufps xmm7, xmm6, 82
	unpcklps xmm3, xmm2
	unpcklps xmm2, xmm5
	mulps xmm2, xmm7
	mulps xmm3, xmm4
	subps xmm2, xmm3
	movss xmm3, dword ptr [rip + .LCPI257_0]
		// src/f32/scalar/mat3a.rs:706
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm3, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm11, xmm1
	movlhps xmm11, xmm10
	shufps xmm11, xmm10, 88
	shufps xmm3, xmm3, 0
	mulps xmm11, xmm3
	shufps xmm1, xmm2, 1
	shufps xmm1, xmm2, 88
	mulps xmm1, xmm3
	movlhps xmm0, xmm9
	shufps xmm0, xmm9, 88
	mulps xmm0, xmm3
	movaps xmm9, xmm1
	movaps xmm10, xmm0
.LBB257_2:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm11
	movaps xmmword ptr [rdi + 16], xmm9
	movaps xmmword ptr [rdi + 32], xmm10
	#APP
	#NO_APP
		// benches/gungraun.rs:285
		}
	ret
