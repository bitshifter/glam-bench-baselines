.section .text.gungraun::affine3a_transform_point3a::__gungraun_wrapper_mod::affine3a_transform_point3a,"ax",@progbits
	.p2align	4
.type	gungraun::affine3a_transform_point3a::__gungraun_wrapper_mod::affine3a_transform_point3a,@function
gungraun::affine3a_transform_point3a::__gungraun_wrapper_mod::affine3a_transform_point3a:
	.cfi_startproc
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	movaps xmm1, xmmword ptr [rsi]
	movaps xmm2, xmmword ptr [rsi + 16]
	movaps xmm3, xmmword ptr [rsi + 32]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	movsd xmm0, qword ptr [rdx]
	movss xmm4, dword ptr [rsi + 24]
	movaps xmm5, xmmword ptr [rip + .LCPI276_0]
	movaps xmm6, xmm5
	shufps xmm6, xmm4, 3
	shufps xmm2, xmm6, 36
	movss xmm4, dword ptr [rip + .LCPI276_1]
	movaps xmm6, xmm4
	shufps xmm6, xmm0, 212
	movaps xmm7, xmm0
	shufps xmm7, xmm6, 37
	mulps xmm7, xmm2
	movss xmm2, dword ptr [rsi + 40]
	shufps xmm5, xmm2, 3
	shufps xmm3, xmm5, 36
	movss xmm2, dword ptr [rdx + 8]
	movaps xmm5, xmmword ptr [rip + .LCPI276_2]
	movss xmm5, xmm2
	shufps xmm5, xmm5, 64
	mulps xmm5, xmm3
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	movaps xmm2, xmmword ptr [rsi + 48]
	movaps xmm3, xmm2
	unpckhpd xmm3, xmm1
	shufps xmm1, xmm3, 36
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	movlhps xmm4, xmm0
	shufps xmm0, xmm4, 32
	mulps xmm0, xmm1
	addps xmm0, xmm7
	addps xmm0, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	movaps xmm1, xmm0
	unpckhpd xmm1, xmm2
	shufps xmm2, xmm1, 36
	addps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:624
		}
	ret
