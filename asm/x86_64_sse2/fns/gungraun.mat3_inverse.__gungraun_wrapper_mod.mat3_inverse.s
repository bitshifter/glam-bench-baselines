.section .text.gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse,@function
gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse:
	.cfi_startproc
		// src/f32/mat3.rs:628
		let det = self.x_axis.dot(tmp0);
	movss xmm5, dword ptr [rsi]
		// src/f32/mat3.rs:627
		let tmp0 = self.y_axis.cross(self.z_axis);
	movups xmm2, xmmword ptr [rsi + 20]
		// src/f32/mat3.rs:628
		let det = self.x_axis.dot(tmp0);
	movups xmm1, xmmword ptr [rsi + 4]
		// src/f32/mat3.rs:627
		let tmp0 = self.y_axis.cross(self.z_axis);
	movss xmm4, dword ptr [rsi + 16]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm3, xmm2
	shufps xmm3, xmm1, 0
	movaps xmm6, xmm1
	shufps xmm6, xmm3, 39
	movaps xmm0, xmm2
	shufps xmm0, xmm2, 75
	mulps xmm0, xmm6
	shufps xmm3, xmm1, 152
	movaps xmm6, xmm1
	shufps xmm6, xmm2, 51
	movaps xmm7, xmm2
	shufps xmm7, xmm6, 142
	mulps xmm7, xmm3
	subps xmm0, xmm7
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm3, xmm4
	mulss xmm3, xmm5
		// src/f32/mat3.rs:628
		let det = self.x_axis.dot(tmp0);
	movsd xmm6, qword ptr [rsi + 8]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm7, xmm6
	movlhps xmm7, xmm5
	movlhps xmm4, xmm5
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulss xmm5, xmm0
	movaps xmm8, xmm0
	shufps xmm8, xmm0, 255
	mulss xmm8, xmm1
	addss xmm8, xmm5
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm5, xmm2
	shufps xmm5, xmm1, 39
	shufps xmm5, xmm6, 92
	shufps xmm5, xmm5, 120
	movaps xmm9, xmm7
	shufps xmm9, xmm2, 98
	mulps xmm9, xmm5
	shufps xmm7, xmm4, 136
	shufps xmm2, xmm2, 145
	mulps xmm2, xmm7
	subps xmm9, xmm2
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm2, xmm9
	unpckhpd xmm2, xmm9
	mulss xmm2, xmm6
	addss xmm2, xmm8
	movss xmm4, dword ptr [rsi + 12]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm4, xmm1
	subss xmm3, xmm4
	movss xmm1, dword ptr [rip + .LCPI167_0]
		// src/f32/mat3.rs:638
		let inv_det = Vec3::splat(1.0 / det);
	divss xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm3, xmm1
	shufps xmm1, xmm1, 0
	mulps xmm0, xmm1
	mulps xmm1, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm0
	movups xmmword ptr [rdi + 16], xmm1
	movss dword ptr [rdi + 32], xmm3
	#APP
	#NO_APP
		// benches/gungraun.rs:228
		}
	ret
