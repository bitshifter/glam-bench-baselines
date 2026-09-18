.section .text.gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,@function
gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:695
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm6, qword ptr [rsi + 16]
	movsd xmm1, qword ptr [rsi + 32]
		// src/f32/scalar/mat3a.rs:696
		let det = self.x_axis.dot(tmp0);
	movsd xmm3, qword ptr [rsi]
	movsd xmm4, qword ptr [rsi + 4]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 225
	movaps xmm0, xmm3
	shufps xmm0, xmm6, 1
	shufps xmm0, xmm6, 226
	mulps xmm0, xmm2
	movaps xmm2, xmm3
	shufps xmm2, xmm6, 16
	shufps xmm2, xmm6, 226
	mulps xmm2, xmm1
	subps xmm0, xmm2
		// src/f32/scalar/mat3a.rs:695
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm2, qword ptr [rsi + 20]
	movss xmm10, dword ptr [rsi + 24]
		// src/f32/scalar/mat3a.rs:696
		let det = self.x_axis.dot(tmp0);
	movss xmm9, dword ptr [rsi + 8]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm5, xmm1
	shufps xmm5, xmm2, 1
	shufps xmm5, xmm2, 226
	movss xmm12, dword ptr [rsi + 40]
	movaps xmm11, xmm4
	movss xmm11, xmm12
	mulps xmm5, xmm11
	shufps xmm12, xmm2, 212
	shufps xmm12, xmm2, 82
	movaps xmm7, xmm4
	shufps xmm7, xmm1, 16
	shufps xmm7, xmm1, 226
	mulps xmm7, xmm12
	subps xmm5, xmm7
	movaps xmm7, xmm10
	mulss xmm7, xmm4
	movaps xmm13, xmm2
	mulss xmm13, xmm9
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm8, xmm6
	mulss xmm8, xmm9
	mulss xmm10, xmm3
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mulps xmm2, xmm3
	movaps xmm14, xmm6
	mulps xmm14, xmm4
	subps xmm2, xmm14
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	subss xmm7, xmm13
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	unpcklps xmm6, xmm1
	unpcklps xmm1, xmm3
	mulps xmm1, xmm12
	mulps xmm6, xmm11
	subps xmm1, xmm6
	subss xmm8, xmm10
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulss xmm4, xmm1
	mulss xmm3, xmm5
	addss xmm3, xmm4
	mulss xmm9, xmm0
	addss xmm9, xmm3
	movss xmm3, dword ptr [rip + .LCPI185_0]
		// src/f32/scalar/mat3a.rs:706
		let inv_det = Vec3A::splat(1.0 / det);
	divss xmm3, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movlhps xmm7, xmm3
	shufps xmm5, xmm7, 36
	shufps xmm7, xmm7, 138
	mulps xmm7, xmm5
	movlhps xmm8, xmm3
	shufps xmm1, xmm8, 36
	shufps xmm8, xmm8, 138
	mulps xmm8, xmm1
	movlhps xmm2, xmm3
	shufps xmm0, xmm2, 36
	shufps xmm2, xmm2, 138
	mulps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm7
	movaps xmmword ptr [rdi + 16], xmm8
	movaps xmmword ptr [rdi + 32], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:278
		}
	ret
