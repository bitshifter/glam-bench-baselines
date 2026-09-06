.section .text.gungraun::mat3_try_inverse::__gungraun_wrapper_mod::mat3_try_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat3_try_inverse::__gungraun_wrapper_mod::mat3_try_inverse,@function
gungraun::mat3_try_inverse::__gungraun_wrapper_mod::mat3_try_inverse:
	.cfi_startproc
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	movups xmm1, xmmword ptr [rsi + 20]
	movups xmm6, xmmword ptr [rsi]
	movups xmm2, xmmword ptr [rsi + 4]
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm8, qword ptr [rsi + 24]
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	movsd xmm10, qword ptr [rsi + 8]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm4, xmm1
	mulss xmm4, xmm2
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm5, qword ptr [rsi + 28]
	movsd xmm9, qword ptr [rsi + 12]
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	movaps xmm3, xmm6
	shufps xmm3, xmm6, 236
	movss xmm0, dword ptr [rsi + 16]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mulss xmm0, xmm10
	subss xmm4, xmm0
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm0, xmm10
	unpcklps xmm0, xmm6
	mulps xmm0, xmm9
	movaps xmm7, xmm1
	unpcklps xmm7, xmm2
	mulps xmm7, xmm3
	subps xmm0, xmm7
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm7, xmm8
	mulss xmm7, xmm4
	movaps xmm3, xmm5
	mulps xmm3, xmm0
	addss xmm7, xmm3
	shufps xmm3, xmm3, 85
	addss xmm3, xmm7
	xorps xmm7, xmm7
		// src/f32/mat3.rs:537
		if det == 0.0 {
	ucomiss xmm3, xmm7
	jne .LBB230_2
	jp .LBB230_2
	xorps xmm4, xmm4
	xor eax, eax
	xorps xmm1, xmm1
	jmp .LBB230_3
.LBB230_2:
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm11, xmm0
	shufps xmm11, xmm5, 212
	shufps xmm11, xmm8, 18
	movss xmm7, dword ptr [rip + .LCPI230_0]
	movaps xmm5, xmm6
	unpcklps xmm5, xmm7
	movaps xmm12, xmm7
	movlhps xmm12, xmm10
	shufps xmm10, xmm2, 197
	shufps xmm5, xmm10, 132
	mulps xmm5, xmm11
	xorps xmm10, xmm10
	xorps xmm11, xmm11
	movlhps xmm11, xmm8
	shufps xmm9, xmm8, 85
	shufps xmm11, xmm9, 130
	movlhps xmm6, xmm8
	shufps xmm12, xmm6, 34
	mulps xmm12, xmm11
	subps xmm5, xmm12
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movlhps xmm4, xmm1
	movaps xmm6, xmm2
	shufps xmm6, xmm1, 35
	shufps xmm6, xmm4, 136
	movaps xmm8, xmm7
	shufps xmm8, xmm1, 212
	movaps xmm4, xmm2
	shufps xmm4, xmm1, 49
	shufps xmm4, xmm8, 130
	mulps xmm4, xmm6
	shufps xmm10, xmm2, 228
	movaps xmm6, xmm1
	shufps xmm6, xmm10, 140
	movaps xmm8, xmm7
	shufps xmm8, xmm1, 48
	movsd xmm1, xmm2
	shufps xmm1, xmm8, 130
	mulps xmm1, xmm6
	subps xmm4, xmm1
		// src/f32/mat3.rs:543
		let inv_det = Vec3::splat(1.0 / det);
	divss xmm7, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm0, xmm0, 85
	mulss xmm0, xmm7
	movaps xmm1, xmm7
	shufps xmm1, xmm7, 0
	mulps xmm4, xmm1
	mulps xmm1, xmm5
	mov eax, 1
	movaps xmm7, xmm0
.LBB230_3:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov dword ptr [rdi], eax
	movups xmmword ptr [rdi + 4], xmm4
	movups xmmword ptr [rdi + 20], xmm1
	movss dword ptr [rdi + 36], xmm7
	#APP
	#NO_APP
		// benches/gungraun.rs:248
		}
	ret
