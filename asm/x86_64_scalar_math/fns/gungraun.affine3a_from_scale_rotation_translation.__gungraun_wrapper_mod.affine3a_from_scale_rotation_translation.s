.section .text.gungraun::affine3a_from_scale_rotation_translation::__gungraun_wrapper_mod::affine3a_from_scale_rotation_translation,"ax",@progbits
	.p2align	4
.type	gungraun::affine3a_from_scale_rotation_translation::__gungraun_wrapper_mod::affine3a_from_scale_rotation_translation,@function
gungraun::affine3a_from_scale_rotation_translation::__gungraun_wrapper_mod::affine3a_from_scale_rotation_translation:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:282
		let x2 = rotation.x + rotation.x;
	movss xmm3, dword ptr [rdx]
	movaps xmm0, xmm3
	addss xmm0, xmm3
		// src/f32/scalar/mat3a.rs:285
		let xx = rotation.x * x2;
	movaps xmm5, xmm3
	mulss xmm5, xmm0
		// src/f32/scalar/mat3a.rs:291
		let wx = rotation.w * x2;
	movss xmm6, dword ptr [rdx + 12]
	mulss xmm0, xmm6
		// src/f32/scalar/mat3a.rs:283
		let y2 = rotation.y + rotation.y;
	movsd xmm4, qword ptr [rdx + 4]
	movaps xmm1, xmm4
	addps xmm1, xmm4
		// src/f32/scalar/mat3a.rs:286
		let xy = rotation.x * y2;
	shufps xmm3, xmm3, 0
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 20
	mulps xmm2, xmm3
		// src/f32/scalar/mat3a.rs:289
		let yz = rotation.y * z2;
	movaps xmm3, xmm1
	shufps xmm3, xmm1, 85
	mulps xmm3, xmm4
		// src/f32/scalar/mat3a.rs:288
		let yy = rotation.y * y2;
	mulps xmm4, xmm1
		// src/f32/scalar/mat3a.rs:290
		let zz = rotation.z * z2;
	movaps xmm7, xmm4
	shufps xmm7, xmm4, 85
		// src/f32/scalar/mat3a.rs:293
		let wz = rotation.w * z2;
	shufps xmm6, xmm6, 0
	shufps xmm1, xmm1, 65
	mulps xmm1, xmm6
		// src/f32/scalar/mat3a.rs:296
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	movaps xmm8, xmm4
	addss xmm8, xmm7
	movss xmm6, dword ptr [rip + .LCPI286_0]
	movaps xmm9, xmm6
	subss xmm9, xmm8
	movaps xmm8, xmm2
	addps xmm8, xmm1
	movaps xmm10, xmm2
	subps xmm10, xmm1
	movss xmm10, xmm8
		// src/f32/scalar/mat3a.rs:297
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	addss xmm7, xmm5
	movaps xmm8, xmm6
	subss xmm8, xmm7
		// src/f32/scalar/mat3a.rs:298
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	addss xmm4, xmm5
		// src/f32/affine3a.rs:246
		rotation.x_axis * scale.x,
	movsd xmm11, qword ptr [rsi]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movsd xmm5, qword ptr [rsi + 4]
		// src/f32/affine3a.rs:246
		rotation.x_axis * scale.x,
	movaps xmm12, xmm11
	shufps xmm12, xmm11, 64
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulps xmm12, xmm10
	mulss xmm9, xmm11
	shufps xmm11, xmm11, 85
	mulss xmm11, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss xmm7, dword ptr [rcx + 8]
	movss dword ptr [rdi], xmm9
	movups xmmword ptr [rdi + 4], xmm12
	movss dword ptr [rdi + 20], xmm11
		// src/f32/scalar/mat3a.rs:297
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	shufps xmm6, xmm2, 228
	shufps xmm2, xmm6, 36
	movss xmm2, xmm3
	movss xmm1, xmm0
	shufps xmm0, xmm4, 0
	addps xmm1, xmm2
	subps xmm2, xmm0
	shufps xmm1, xmm2, 196
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm5, xmm5, 84
	mulps xmm5, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi + 24], xmm5
	movups xmmword ptr [rdi + 28], xmm5
	shufps xmm5, xmm5, 255
	movss dword ptr [rdi + 44], xmm5
		// src/f32/affine3a.rs:250
		translation: translation.into(),
	movsd xmm0, qword ptr [rcx]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm0, xmm7, 4
	movaps xmmword ptr [rdi + 48], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:576
		}
	ret
