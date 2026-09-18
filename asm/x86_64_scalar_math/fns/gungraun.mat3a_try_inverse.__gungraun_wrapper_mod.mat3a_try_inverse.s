.section .text.gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse,@function
gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse:
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
	movaps xmm10, xmm8
	shufps xmm10, xmm8, 85
	addss xmm10, xmm8
	movaps xmm9, xmm0
	mulss xmm9, xmm7
	addss xmm9, xmm10
	xorps xmm8, xmm8
		// src/f32/scalar/mat3a.rs:698
		if det == 0.0 {
	ucomiss xmm9, xmm8
	jne .LBB241_2
	jp .LBB241_2
	xorps xmm3, xmm3
	xor eax, eax
	xorps xmm1, xmm1
	xorps xmm0, xmm0
	jmp .LBB241_3
.LBB241_2:
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm10, xmm5
	shufps xmm10, xmm3, 1
	shufps xmm10, xmm3, 226
	movaps xmm8, xmm2
	shufps xmm8, xmm2, 225
	mulps xmm8, xmm10
	movaps xmm10, xmm5
	shufps xmm10, xmm3, 16
	shufps xmm10, xmm3, 226
	mulps xmm10, xmm2
	subps xmm8, xmm10
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
	movss xmm4, dword ptr [rip + .LCPI241_0]
		// src/f32/scalar/mat3a.rs:706
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm4, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm3, xmm1
	movlhps xmm3, xmm10
	shufps xmm3, xmm10, 88
	shufps xmm4, xmm4, 0
	mulps xmm3, xmm4
	shufps xmm1, xmm2, 1
	shufps xmm1, xmm2, 88
	mulps xmm1, xmm4
	movlhps xmm0, xmm8
	shufps xmm0, xmm8, 88
	mulps xmm0, xmm4
	mov eax, 1
.LBB241_3:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov qword ptr [rdi], rax
	mov qword ptr [rdi + 8], 0
	movaps xmmword ptr [rdi + 16], xmm3
	movaps xmmword ptr [rdi + 32], xmm1
	movaps xmmword ptr [rdi + 48], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:298
		}
	ret
