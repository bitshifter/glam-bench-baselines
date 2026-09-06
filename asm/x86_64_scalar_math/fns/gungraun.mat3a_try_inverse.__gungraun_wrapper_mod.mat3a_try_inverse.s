.section .text.gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse,@function
gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	movss xmm3, dword ptr [rsi + 32]
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	movss xmm8, dword ptr [rsi]
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm9, qword ptr [rsi + 20]
	movss xmm6, dword ptr [rsi + 24]
	movsd xmm0, qword ptr [rsi + 36]
	movaps xmm2, xmm0
	shufps xmm2, xmm0, 225
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	movsd xmm11, qword ptr [rsi + 4]
	movss xmm7, dword ptr [rsi + 8]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm1, xmm6
	mulss xmm1, xmm11
	movaps xmm4, xmm9
	mulss xmm4, xmm7
	subss xmm1, xmm4
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm5, xmm3
	mulss xmm5, xmm1
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movss xmm13, dword ptr [rsi + 16]
	movaps xmm10, xmm13
	movlhps xmm10, xmm9
	shufps xmm10, xmm9, 226
	movaps xmm4, xmm8
	unpcklps xmm4, xmm7
	mulps xmm4, xmm10
	movaps xmm10, xmm13
	unpcklps xmm10, xmm8
	movaps xmm12, xmm6
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
	addss xmm12, xmm5
	addss xmm12, xmm10
	xorps xmm5, xmm5
		// src/f32/scalar/mat3a.rs:605
		if det == 0.0 {
	ucomiss xmm12, xmm5
	jne .LBB240_2
	jp .LBB240_2
	xorps xmm5, xmm5
	xor eax, eax
	xorps xmm0, xmm0
	xorps xmm10, xmm10
	jmp .LBB240_3
.LBB240_2:
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm5, xmm11
	shufps xmm5, xmm9, 1
	shufps xmm5, xmm9, 226
	mulps xmm5, xmm2
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm10, xmm0
	unpcklps xmm10, xmm11
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	shufps xmm11, xmm9, 16
	shufps xmm11, xmm9, 226
	mulps xmm11, xmm0
	subps xmm5, xmm11
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm11, xmm3
	movlhps xmm11, xmm13
	shufps xmm11, xmm13, 226
	mulps xmm10, xmm11
	movaps xmm13, xmm2
	shufps xmm13, xmm9, 1
	shufps xmm13, xmm9, 226
	unpcklps xmm3, xmm8
	mulps xmm13, xmm3
	subps xmm10, xmm13
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movss xmm0, xmm6
	mulps xmm0, xmm3
	unpcklps xmm2, xmm7
	mulps xmm2, xmm11
	subps xmm0, xmm2
	movss xmm2, dword ptr [rip + .LCPI240_0]
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm2, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm5, xmm1, 4
	shufps xmm2, xmm2, 0
	mulps xmm5, xmm2
	shufps xmm0, xmm4, 84
	mulps xmm0, xmm2
	shufps xmm10, xmm4, 4
	mulps xmm10, xmm2
	mov eax, 1
.LBB240_3:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov qword ptr [rdi], rax
	mov qword ptr [rdi + 8], 0
	movaps xmmword ptr [rdi + 16], xmm5
	movaps xmmword ptr [rdi + 32], xmm0
	movaps xmmword ptr [rdi + 48], xmm10
	#APP
	#NO_APP
		// benches/gungraun.rs:298
		}
	ret
