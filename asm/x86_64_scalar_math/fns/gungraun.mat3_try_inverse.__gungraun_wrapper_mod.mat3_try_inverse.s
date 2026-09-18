.section .text.gungraun::mat3_try_inverse::__gungraun_wrapper_mod::mat3_try_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat3_try_inverse::__gungraun_wrapper_mod::mat3_try_inverse,@function
gungraun::mat3_try_inverse::__gungraun_wrapper_mod::mat3_try_inverse:
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
	movsd xmm8, qword ptr [rsi + 28]
	movss xmm9, dword ptr [rsi + 32]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm6, xmm2
	mulss xmm6, xmm8
		// src/f32/mat3.rs:628
		let det = self.x_axis.dot(tmp0);
	movsd xmm5, qword ptr [rsi + 4]
		// src/f32/mat3.rs:627
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm4, qword ptr [rsi + 12]
	movaps xmm1, xmm4
	shufps xmm1, xmm4, 85
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm0, xmm1
	mulss xmm0, xmm9
	subss xmm0, xmm6
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm10, xmm4
	mulps xmm10, xmm8
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm6, xmm2
	mulss xmm6, xmm7
	unpcklps xmm6, xmm10
	unpcklps xmm9, xmm7
	mulps xmm9, xmm4
	subps xmm6, xmm9
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm9, xmm3
	mulss xmm9, xmm0
	movaps xmm7, xmm5
	mulps xmm7, xmm6
	addss xmm9, xmm7
	shufps xmm7, xmm7, 85
	addss xmm7, xmm9
	xorps xmm9, xmm9
		// src/f32/mat3.rs:630
		if det == 0.0 {
	ucomiss xmm7, xmm9
	jne .LBB233_2
	jp .LBB233_2
	xorps xmm0, xmm0
	xor eax, eax
	xorps xmm8, xmm8
	jmp .LBB233_3
.LBB233_2:
	movaps xmm9, xmm3
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm11, xmm4
	shufps xmm11, xmm8, 17
	shufps xmm11, xmm8, 226
	mulps xmm11, xmm5
	unpcklps xmm8, xmm2
	movaps xmm10, xmm5
	shufps xmm10, xmm5, 225
	mulps xmm10, xmm8
	subps xmm10, xmm11
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm12, xmm3
	shufps xmm12, xmm2, 51
	movaps xmm8, xmm6
	shufps xmm8, xmm2, 85
	shufps xmm12, xmm8, 130
	movss xmm8, dword ptr [rip + .LCPI233_0]
	movaps xmm13, xmm8
	shufps xmm13, xmm3, 212
	movaps xmm11, xmm3
	shufps xmm11, xmm13, 136
	mulps xmm11, xmm12
	xorps xmm12, xmm12
	shufps xmm12, xmm2, 34
	shufps xmm2, xmm12, 129
	movaps xmm12, xmm8
	movlhps xmm12, xmm3
	shufps xmm3, xmm12, 130
	mulps xmm3, xmm2
	subps xmm11, xmm3
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm1, xmm9
	mulss xmm4, xmm5
	subss xmm1, xmm4
		// src/f32/mat3.rs:638
		let inv_det = Vec3::splat(1.0 / det);
	divss xmm8, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm2, xmm8
	movlhps xmm2, xmm10
	shufps xmm6, xmm10, 212
	shufps xmm2, xmm6, 40
	unpcklps xmm0, xmm8
	shufps xmm0, xmm0, 84
	mulps xmm0, xmm2
	mulss xmm1, xmm8
	shufps xmm8, xmm8, 0
	mulps xmm8, xmm11
	mov eax, 1
	movaps xmm9, xmm1
.LBB233_3:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov dword ptr [rdi], eax
	movups xmmword ptr [rdi + 4], xmm0
	movups xmmword ptr [rdi + 20], xmm8
	movss dword ptr [rdi + 36], xmm9
	#APP
	#NO_APP
		// benches/gungraun.rs:248
		}
	ret
