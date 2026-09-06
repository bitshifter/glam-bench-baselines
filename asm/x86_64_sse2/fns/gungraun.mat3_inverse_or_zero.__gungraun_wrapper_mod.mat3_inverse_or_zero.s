.section .text.gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero,"ax",@progbits
	.p2align	4
.type	gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero,@function
gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero:
	.cfi_startproc
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	movups xmm1, xmmword ptr [rsi + 20]
	movups xmm5, xmmword ptr [rsi]
	movups xmm2, xmmword ptr [rsi + 4]
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm7, qword ptr [rsi + 24]
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	movsd xmm10, qword ptr [rsi + 8]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm4, xmm1
	mulss xmm4, xmm2
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm6, qword ptr [rsi + 28]
	movsd xmm9, qword ptr [rsi + 12]
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	movaps xmm3, xmm5
	shufps xmm3, xmm5, 236
	movss xmm0, dword ptr [rsi + 16]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mulss xmm0, xmm10
	subss xmm4, xmm0
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm0, xmm10
	unpcklps xmm0, xmm5
	mulps xmm0, xmm9
	movaps xmm8, xmm1
	unpcklps xmm8, xmm2
	mulps xmm8, xmm3
	subps xmm0, xmm8
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm8, xmm7
	mulss xmm8, xmm4
	movaps xmm3, xmm6
	mulps xmm3, xmm0
	addss xmm8, xmm3
	shufps xmm3, xmm3, 85
	addss xmm3, xmm8
	xorps xmm11, xmm11
	xorps xmm8, xmm8
		// src/f32/mat3.rs:537
		if det == 0.0 {
	ucomiss xmm3, xmm8
	xorps xmm12, xmm12
	jne .LBB244_1
	jnp .LBB244_2
.LBB244_1:
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm11, xmm0
	shufps xmm11, xmm6, 212
	shufps xmm11, xmm7, 18
	movss xmm8, dword ptr [rip + .LCPI244_0]
	movaps xmm6, xmm5
	unpcklps xmm6, xmm8
	movaps xmm12, xmm8
	movlhps xmm12, xmm10
	shufps xmm10, xmm2, 197
	shufps xmm6, xmm10, 132
	mulps xmm6, xmm11
	xorps xmm10, xmm10
	xorps xmm11, xmm11
	movlhps xmm11, xmm7
	shufps xmm9, xmm7, 85
	shufps xmm11, xmm9, 130
	movlhps xmm5, xmm7
	shufps xmm12, xmm5, 34
	mulps xmm12, xmm11
	subps xmm6, xmm12
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movlhps xmm4, xmm1
	movaps xmm5, xmm2
	shufps xmm5, xmm1, 35
	shufps xmm5, xmm4, 136
	movaps xmm4, xmm8
	shufps xmm4, xmm1, 212
	movaps xmm11, xmm2
	shufps xmm11, xmm1, 49
	shufps xmm11, xmm4, 130
	mulps xmm11, xmm5
	shufps xmm10, xmm2, 228
	movaps xmm4, xmm1
	shufps xmm4, xmm10, 140
	movaps xmm5, xmm8
	shufps xmm5, xmm1, 48
	movsd xmm1, xmm2
	shufps xmm1, xmm5, 130
	mulps xmm1, xmm4
	subps xmm11, xmm1
		// src/f32/mat3.rs:543
		let inv_det = Vec3::splat(1.0 / det);
	divss xmm8, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm0, xmm0, 85
	mulss xmm0, xmm8
	movaps xmm12, xmm8
	shufps xmm12, xmm8, 0
	mulps xmm11, xmm12
	mulps xmm12, xmm6
	movaps xmm8, xmm0
.LBB244_2:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm11
	movups xmmword ptr [rdi + 16], xmm12
	movss dword ptr [rdi + 32], xmm8
	#APP
	#NO_APP
		// benches/gungraun.rs:235
		}
	ret
