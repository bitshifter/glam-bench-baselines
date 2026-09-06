.section .text.gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat,@function
gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:282
		let x2 = rotation.x + rotation.x;
	movss xmm0, dword ptr [rsi]
	movaps xmm1, xmm0
	addss xmm1, xmm0
		// src/f32/scalar/mat3a.rs:285
		let xx = rotation.x * x2;
	movaps xmm3, xmm0
	mulss xmm3, xmm1
		// src/f32/scalar/mat3a.rs:291
		let wx = rotation.w * x2;
	movss xmm6, dword ptr [rsi + 12]
	mulss xmm1, xmm6
		// src/f32/scalar/mat3a.rs:283
		let y2 = rotation.y + rotation.y;
	movsd xmm7, qword ptr [rsi + 4]
	movaps xmm2, xmm7
	addps xmm2, xmm7
		// src/f32/scalar/mat3a.rs:286
		let xy = rotation.x * y2;
	shufps xmm0, xmm0, 0
	mulps xmm0, xmm2
	movaps xmm4, xmm0
	shufps xmm4, xmm0, 20
		// src/f32/scalar/mat3a.rs:289
		let yz = rotation.y * z2;
	movaps xmm5, xmm2
	shufps xmm5, xmm2, 85
	mulps xmm5, xmm7
		// src/f32/scalar/mat3a.rs:288
		let yy = rotation.y * y2;
	mulps xmm7, xmm2
		// src/f32/scalar/mat3a.rs:290
		let zz = rotation.z * z2;
	movaps xmm8, xmm7
	shufps xmm8, xmm7, 85
		// src/f32/scalar/mat3a.rs:293
		let wz = rotation.w * z2;
	shufps xmm6, xmm6, 0
	shufps xmm2, xmm2, 65
	mulps xmm2, xmm6
		// src/f32/scalar/mat3a.rs:296
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	movaps xmm9, xmm7
	addss xmm9, xmm8
	movss xmm6, dword ptr [rip + .LCPI212_0]
	movaps xmm10, xmm6
	subss xmm10, xmm9
	movaps xmm9, xmm0
	addps xmm9, xmm2
	subps xmm4, xmm2
	movss xmm4, xmm9
		// src/f32/scalar/mat3a.rs:297
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	addss xmm8, xmm3
	movaps xmm9, xmm6
	subss xmm9, xmm8
	shufps xmm0, xmm5, 1
	shufps xmm0, xmm5, 226
		// src/f32/scalar/mat3a.rs:298
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	subss xmm5, xmm1
	addss xmm7, xmm3
	subss xmm6, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi], xmm10
	movups xmmword ptr [rdi + 4], xmm4
	movss dword ptr [rdi + 20], xmm9
		// src/f32/scalar/mat3a.rs:297
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	movss xmm2, xmm1
	addps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi + 24], xmm2
	movlps qword ptr [rdi + 28], xmm2
	movss dword ptr [rdi + 36], xmm5
	movss dword ptr [rdi + 40], xmm6
	movss dword ptr [rdi + 44], xmm6
	#APP
	#NO_APP
		// benches/gungraun.rs:322
		}
	ret
