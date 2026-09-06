.section .text.gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse,@function
gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse:
	.cfi_startproc
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	movups xmm1, xmmword ptr [rsi + 20]
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	movups xmm3, xmmword ptr [rsi + 4]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm2, xmm1
	shufps xmm2, xmm3, 0
	movaps xmm4, xmm3
	shufps xmm4, xmm2, 39
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 75
	mulps xmm0, xmm4
	shufps xmm2, xmm3, 152
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	movsd xmm4, qword ptr [rsi + 8]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm6, xmm1
	shufps xmm6, xmm3, 39
	shufps xmm6, xmm4, 92
	movss xmm5, dword ptr [rsi]
	shufps xmm4, xmm5, 0
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	movsd xmm7, qword ptr [rsi + 12]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm8, xmm7
	shufps xmm8, xmm5, 197
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	movlhps xmm5, xmm3
	shufps xmm5, xmm3, 226
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	shufps xmm3, xmm1, 51
	movaps xmm9, xmm1
	shufps xmm9, xmm3, 142
	mulps xmm9, xmm2
	subps xmm0, xmm9
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm2, xmm0
	unpckhpd xmm2, xmm0
	movaps xmm3, xmm1
	shufps xmm3, xmm1, 85
	mulss xmm3, xmm2
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	shufps xmm6, xmm6, 120
	movaps xmm2, xmm4
	shufps xmm2, xmm1, 98
	mulps xmm2, xmm6
	shufps xmm4, xmm8, 136
	movaps xmm6, xmm1
	shufps xmm6, xmm1, 145
	mulps xmm6, xmm4
	subps xmm2, xmm6
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mulps xmm5, xmm7
	movaps xmm4, xmm5
	shufps xmm4, xmm5, 85
	subps xmm4, xmm5
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movhlps xmm1, xmm1
	movaps xmm5, xmm2
	shufps xmm5, xmm2, 85
	unpcklps xmm5, xmm4
	mulps xmm5, xmm1
	addss xmm3, xmm5
	shufps xmm5, xmm5, 85
	addss xmm5, xmm3
	movss xmm1, dword ptr [rip + .LCPI166_0]
		// src/f32/mat3.rs:543
		let inv_det = Vec3::splat(1.0 / det);
	divss xmm1, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm4, xmm1
	shufps xmm1, xmm1, 0
	mulps xmm0, xmm1
	mulps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm0
	movups xmmword ptr [rdi + 16], xmm1
	movss dword ptr [rdi + 32], xmm4
	#APP
	#NO_APP
		// benches/gungraun.rs:228
		}
	ret
