.section .text.gungraun::affine3a_mul_affine3a::__gungraun_wrapper_mod::affine3a_mul_affine3a,"ax",@progbits
	.p2align	4
.type	gungraun::affine3a_mul_affine3a::__gungraun_wrapper_mod::affine3a_mul_affine3a,@function
gungraun::affine3a_mul_affine3a::__gungraun_wrapper_mod::affine3a_mul_affine3a:
	.cfi_startproc
		// src/f32/affine3a.rs:575
		matrix3: self.matrix3 * rhs.matrix3,
	movsd xmm1, qword ptr [rsi + 16]
	movsd xmm0, qword ptr [rsi + 32]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	movsd xmm2, qword ptr [rdx]
		// src/f32/scalar/mat3a.rs:1033
		self.mul(rhs.y_axis),
	movsd xmm3, qword ptr [rdx + 16]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	movaps xmm4, xmm2
	movlhps xmm4, xmm3
	shufps xmm4, xmm3, 8
	movaps xmm8, xmm2
	shufps xmm8, xmm3, 17
	shufps xmm8, xmm3, 88
	movss xmm3, dword ptr [rdx + 24]
	movss xmm5, dword ptr [rdx + 8]
	movaps xmm12, xmm5
	unpcklps xmm12, xmm3
	shufps xmm12, xmm12, 84
		// src/f32/scalar/mat3a.rs:1034
		self.mul(rhs.z_axis),
	movsd xmm9, qword ptr [rdx + 32]
		// src/f32/affine3a.rs:575
		matrix3: self.matrix3 * rhs.matrix3,
	movsd xmm10, qword ptr [rsi]
	movsd xmm6, qword ptr [rsi + 4]
	movsd xmm3, qword ptr [rsi + 20]
	movsd xmm7, qword ptr [rsi + 36]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	movaps xmm11, xmm6
	shufps xmm11, xmm10, 69
	shufps xmm11, xmm11, 120
	mulps xmm11, xmm4
	movaps xmm4, xmm3
	shufps xmm4, xmm1, 69
	shufps xmm4, xmm4, 120
	mulps xmm4, xmm8
	addps xmm4, xmm11
	movaps xmm11, xmm7
	shufps xmm11, xmm0, 69
	shufps xmm11, xmm11, 120
	mulps xmm11, xmm12
	addps xmm11, xmm4
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	movaps xmm8, xmm1
	shufps xmm8, xmm3, 64
	movss xmm12, dword ptr [rip + .LCPI252_0]
	movss xmm8, xmm12
	movss xmm4, dword ptr [rip + .LCPI252_1]
	movaps xmm14, xmm4
	shufps xmm14, xmm9, 212
	shufps xmm14, xmm9, 88
	mulps xmm14, xmm8
	movaps xmm15, xmm10
	shufps xmm15, xmm11, 48
	shufps xmm15, xmm6, 66
	movaps xmm13, xmm4
	movlhps xmm13, xmm9
	shufps xmm13, xmm9, 8
	mulps xmm13, xmm15
	addps xmm13, xmm14
	movaps xmm15, xmm0
	shufps xmm15, xmm7, 64
	movss xmm14, dword ptr [rdx + 40]
	movaps xmm9, xmm4
	unpcklps xmm9, xmm14
	movss xmm14, dword ptr [rsi + 40]
	shufps xmm14, xmm15, 228
	movss xmm15, xmm12
	shufps xmm9, xmm9, 84
	mulps xmm9, xmm15
	addps xmm9, xmm13
	unpcklps xmm12, xmm10
	unpcklps xmm10, xmm6
	unpcklps xmm2, xmm2
	mulps xmm2, xmm10
	movups xmm10, xmmword ptr [rdx + 4]
	unpcklps xmm1, xmm3
	unpcklps xmm10, xmm10
	mulps xmm10, xmm1
	addps xmm10, xmm2
	unpcklps xmm0, xmm7
	unpcklps xmm5, xmm5
	mulps xmm5, xmm0
	addps xmm5, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm5
	movss dword ptr [rdi + 8], xmm11
	movups xmmword ptr [rdi + 12], xmm11
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	movss xmm0, dword ptr [rsi + 8]
	movlhps xmm0, xmm6
		// src/f32/affine3a.rs:576
		translation: self.matrix3 * rhs.translation + self.translation,
	movsd xmm1, qword ptr [rdx + 48]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	shufps xmm12, xmm0, 36
	movaps xmm0, xmm4
	movlhps xmm0, xmm1
	shufps xmm0, xmm1, 8
	mulps xmm0, xmm12
	movss xmm2, dword ptr [rsi + 24]
	movlhps xmm2, xmm3
	shufps xmm8, xmm2, 36
	movaps xmm2, xmm4
	shufps xmm2, xmm1, 16
	shufps xmm2, xmm1, 88
	mulps xmm2, xmm8
	addps xmm2, xmm0
	shufps xmm15, xmm14, 36
	movss xmm0, dword ptr [rdx + 56]
	unpcklps xmm4, xmm0
	shufps xmm4, xmm4, 84
	mulps xmm4, xmm15
	addps xmm4, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	movss xmm0, dword ptr [rsi + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi + 28], xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	shufps xmm9, xmm9, 255
	unpcklps xmm9, xmm0
	movhps xmm9, qword ptr [rsi + 52]
	addps xmm9, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi + 44], xmm9
	shufps xmm9, xmm9, 255
	movss dword ptr [rdi + 60], xmm9
	#APP
	#NO_APP
		// benches/gungraun.rs:618
		}
	ret
