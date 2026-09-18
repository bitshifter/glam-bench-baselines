.section .text.gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero,"ax",@progbits
	.p2align	4
.type	gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero,@function
gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero:
	.cfi_startproc
		// src/f32/mat3.rs:627
		let tmp0 = self.y_axis.cross(self.z_axis);
	movups xmm2, xmmword ptr [rsi + 20]
	movss xmm7, dword ptr [rsi + 24]
		// src/f32/mat3.rs:628
		let det = self.x_axis.dot(tmp0);
	movups xmm3, xmmword ptr [rsi]
		// src/f32/mat3.rs:627
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm9, qword ptr [rsi + 28]
	movss xmm8, dword ptr [rsi + 32]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm6, xmm2
	mulss xmm6, xmm9
		// src/f32/mat3.rs:628
		let det = self.x_axis.dot(tmp0);
	movsd xmm5, qword ptr [rsi + 4]
		// src/f32/mat3.rs:627
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm4, qword ptr [rsi + 12]
	movaps xmm0, xmm4
	shufps xmm0, xmm4, 85
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm1, xmm0
	mulss xmm1, xmm8
	subss xmm1, xmm6
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm10, xmm4
	mulps xmm10, xmm9
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm6, xmm2
	mulss xmm6, xmm7
	unpcklps xmm6, xmm10
	unpcklps xmm8, xmm7
	mulps xmm8, xmm4
	subps xmm6, xmm8
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm8, xmm3
	mulss xmm8, xmm1
	movaps xmm7, xmm5
	mulps xmm7, xmm6
	addss xmm8, xmm7
	shufps xmm7, xmm7, 85
	addss xmm7, xmm8
	xorps xmm11, xmm11
	xorps xmm10, xmm10
		// src/f32/mat3.rs:630
		if det == 0.0 {
	ucomiss xmm7, xmm10
	xorps xmm8, xmm8
	jne .LBB247_1
	jnp .LBB247_2
.LBB247_1:
	movaps xmm10, xmm3
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm8, xmm4
	shufps xmm8, xmm9, 17
	shufps xmm8, xmm9, 226
	mulps xmm8, xmm5
	unpcklps xmm9, xmm2
	movaps xmm11, xmm5
	shufps xmm11, xmm5, 225
	mulps xmm11, xmm9
	subps xmm11, xmm8
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm12, xmm3
	shufps xmm12, xmm2, 51
	movaps xmm8, xmm6
	shufps xmm8, xmm2, 85
	shufps xmm12, xmm8, 130
	movss xmm8, dword ptr [rip + .LCPI247_0]
	movaps xmm13, xmm8
	shufps xmm13, xmm3, 212
	movaps xmm9, xmm3
	shufps xmm9, xmm13, 136
	mulps xmm9, xmm12
	xorps xmm12, xmm12
	shufps xmm12, xmm2, 34
	shufps xmm2, xmm12, 129
	movaps xmm12, xmm8
	movlhps xmm12, xmm3
	shufps xmm3, xmm12, 130
	mulps xmm3, xmm2
	subps xmm9, xmm3
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm0, xmm10
	mulss xmm4, xmm5
	subss xmm0, xmm4
		// src/f32/mat3.rs:638
		let inv_det = Vec3::splat(1.0 / det);
	divss xmm8, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm2, xmm8
	movlhps xmm2, xmm11
	shufps xmm6, xmm11, 212
	shufps xmm2, xmm6, 40
	unpcklps xmm1, xmm8
	shufps xmm1, xmm1, 84
	mulps xmm1, xmm2
	mulss xmm0, xmm8
	shufps xmm8, xmm8, 0
	mulps xmm8, xmm9
	movaps xmm10, xmm0
	movaps xmm11, xmm1
.LBB247_2:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm11
	movups xmmword ptr [rdi + 16], xmm8
	movss dword ptr [rdi + 32], xmm10
	#APP
	#NO_APP
		// benches/gungraun.rs:235
		}
	ret
