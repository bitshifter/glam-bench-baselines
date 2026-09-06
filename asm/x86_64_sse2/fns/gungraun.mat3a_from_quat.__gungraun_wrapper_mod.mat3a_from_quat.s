.section .text.gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat,@function
gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat:
	.cfi_startproc
		// src/f32/sse2/mat3a.rs:289
		let y2 = rotation.y + rotation.y;
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 85
		// src/f32/sse2/mat3a.rs:290
		let z2 = rotation.z + rotation.z;
	movaps xmm4, xmm0
	unpckhpd xmm4, xmm0
		// src/f32/sse2/mat3a.rs:297
		let wx = rotation.w * x2;
	movaps xmm3, xmm0
	shufps xmm3, xmm0, 255
		// src/f32/sse2/mat3a.rs:288
		let x2 = rotation.x + rotation.x;
	movaps xmm2, xmm0
	addps xmm2, xmm0
		// src/f32/sse2/mat3a.rs:298
		let wy = rotation.w * y2;
	movaps xmm8, xmm2
	shufps xmm8, xmm2, 85
		// src/f32/sse2/mat3a.rs:292
		let xy = rotation.x * y2;
	movaps xmm9, xmm0
	mulss xmm9, xmm8
		// src/f32/sse2/mat3a.rs:298
		let wy = rotation.w * y2;
	mulss xmm8, xmm3
		// src/f32/sse2/mat3a.rs:291
		let xx = rotation.x * x2;
	movaps xmm7, xmm0
	mulps xmm7, xmm2
		// src/f32/sse2/mat3a.rs:290
		let z2 = rotation.z + rotation.z;
	movaps xmm10, xmm4
	addss xmm10, xmm4
		// src/f32/sse2/mat3a.rs:293
		let xz = rotation.x * z2;
	mulss xmm0, xmm10
		// src/f32/sse2/mat3a.rs:295
		let yz = rotation.y * z2;
	mulss xmm1, xmm10
		// src/f32/sse2/mat3a.rs:296
		let zz = rotation.z * z2;
	mulss xmm4, xmm10
		// src/f32/sse2/mat3a.rs:303
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	movaps xmm11, xmm7
	addss xmm11, xmm4
		// src/f32/sse2/mat3a.rs:299
		let wz = rotation.w * z2;
	mulss xmm10, xmm3
		// src/f32/sse2/mat3a.rs:303
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	movaps xmm6, xmmword ptr [rip + .LCPI210_0]
	movaps xmm5, xmm6
	shufps xmm5, xmm9, 1
	shufps xmm5, xmm9, 226
		// src/f32/sse2/mat3a.rs:302
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	addss xmm9, xmm10
	movaps xmm12, xmm0
	subss xmm12, xmm8
		// src/f32/sse2/mat3a.rs:303
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	unpcklps xmm10, xmm11
	subps xmm5, xmm10
		// src/f32/sse2/mat3a.rs:304
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	addss xmm0, xmm8
	movaps xmm8, xmm7
	shufps xmm8, xmm7, 85
		// src/f32/sse2/mat3a.rs:302
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	addss xmm4, xmm8
	movss xmm10, dword ptr [rip + .LCPI210_1]
	subss xmm10, xmm4
		// src/f32/sse2/vec3a.rs:111
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	unpcklps xmm10, xmm9
	shufps xmm10, xmm12, 4
		// src/f32/sse2/mat3a.rs:304
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	addss xmm8, xmm7
		// src/f32/sse2/mat3a.rs:297
		let wx = rotation.w * x2;
	mulss xmm2, xmm3
		// src/f32/sse2/mat3a.rs:304
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	shufps xmm6, xmm1, 1
	shufps xmm6, xmm1, 226
		// src/f32/sse2/mat3a.rs:303
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	addss xmm1, xmm2
		// src/f32/sse2/vec3a.rs:111
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	shufps xmm5, xmm1, 4
		// src/f32/sse2/mat3a.rs:304
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	unpcklps xmm2, xmm8
	subps xmm6, xmm2
		// src/f32/sse2/vec3a.rs:111
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	movlhps xmm0, xmm6
	shufps xmm0, xmm6, 88
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm10
	movaps xmmword ptr [rdi + 16], xmm5
	movaps xmmword ptr [rdi + 32], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:322
		}
	ret
