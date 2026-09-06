.section .text.gungraun::affine3a_from_scale_rotation_translation::__gungraun_wrapper_mod::affine3a_from_scale_rotation_translation,"ax",@progbits
	.p2align	2
.type	gungraun::affine3a_from_scale_rotation_translation::__gungraun_wrapper_mod::affine3a_from_scale_rotation_translation,@function
gungraun::affine3a_from_scale_rotation_translation::__gungraun_wrapper_mod::affine3a_from_scale_rotation_translation:
	.cfi_startproc
		// src/f32/neon/mat3a.rs:286
		let y2 = rotation.y + rotation.y;
	mov s3, v0.s[1]
		// src/f32/neon/mat3a.rs:287
		let z2 = rotation.z + rotation.z;
	mov s4, v0.s[2]
		// src/f32/neon/mat3a.rs:285
		let x2 = rotation.x + rotation.x;
	fadd v5.4s, v0.4s, v0.4s
		// src/f32/neon/mat3a.rs:300
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fmov v21.2s, #1.00000000
	fmov s17, #1.00000000
		// src/f32/neon/vec3a.rs:108
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	mov v1.s[2], v2.s[0]
		// src/f32/neon/mat3a.rs:286
		let y2 = rotation.y + rotation.y;
	fadd s3, s3, s3
		// src/f32/neon/mat3a.rs:287
		let z2 = rotation.z + rotation.z;
	fadd s4, s4, s4
		// src/f32/neon/mat3a.rs:288
		let xx = rotation.x * x2;
	fmul v16.4s, v0.4s, v5.4s
		// src/f32/neon/mat3a.rs:294
		let wx = rotation.w * x2;
	fmul s5, s5, v0.s[3]
		// src/f32/neon/vec3a.rs:108
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	mov v1.s[3], v2.s[0]
		// src/f32/neon/mat3a.rs:291
		let yy = rotation.y * y2;
	fmul s6, s3, v0.s[1]
		// src/f32/neon/mat3a.rs:293
		let zz = rotation.z * z2;
	fmul s7, s4, v0.s[2]
		// src/f32/neon/mat3a.rs:289
		let xy = rotation.x * y2;
	fmul s18, s3, s0
		// src/f32/neon/mat3a.rs:296
		let wz = rotation.w * z2;
	fmul s19, s4, v0.s[3]
		// src/f32/neon/mat3a.rs:295
		let wy = rotation.w * y2;
	fmul s3, s3, v0.s[3]
		// src/f32/neon/mat3a.rs:290
		let xz = rotation.x * z2;
	fmul s22, s4, s0
		// src/f32/neon/mat3a.rs:292
		let yz = rotation.y * z2;
	fmul s0, s4, v0.s[1]
		// src/f32/neon/mat3a.rs:299
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fadd s20, s6, s7
		// src/f32/neon/mat3a.rs:300
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fadd s7, s16, s7
	mov v21.s[0], v18.s[0]
		// src/f32/neon/mat3a.rs:299
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fadd s4, s18, s19
		// src/f32/neon/mat3a.rs:301
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fadd s6, s16, s6
	fsub s18, s0, s5
		// src/f32/neon/mat3a.rs:300
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fadd s0, s0, s5
		// src/f32/neon/mat3a.rs:299
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fsub s20, s17, s20
		// src/f32/neon/mat3a.rs:300
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	mov v19.s[1], v7.s[0]
		// src/f32/neon/mat3a.rs:301
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fadd s7, s22, s3
		// src/f32/neon/mat3a.rs:299
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fsub s3, s22, s3
		// src/f32/neon/mat3a.rs:301
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fsub s5, s17, s6
		// src/f32/neon/vec3a.rs:108
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	mov v20.s[1], v4.s[0]
		// src/f32/neon/mat3a.rs:300
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fsub v4.2s, v21.2s, v19.2s
		// src/f32/neon/vec3a.rs:108
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	mov v7.s[1], v18.s[0]
	mov v20.s[2], v3.s[0]
	mov v4.s[2], v0.s[0]
	mov v7.s[2], v5.s[0]
	mov v20.s[3], v3.s[0]
	mov v4.s[3], v0.s[0]
	mov v7.s[3], v5.s[0]
		// src/f32/affine3a.rs:246
		rotation.x_axis * scale.x,
	ldr s0, [x1]
		// src/f32/affine3a.rs:247
		rotation.y_axis * scale.y,
	ldur d3, [x1, #4]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v0.4s, v20.4s, v0.s[0]
	fmul v4.4s, v4.4s, v3.s[0]
	fmul v3.4s, v7.4s, v3.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q0, q4, [x0]
	stp q3, q1, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:576
		}
	ret
