.section .text.gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat,@function
gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat:
	.cfi_startproc
		// src/f32/neon/mat3a.rs:286
		let y2 = rotation.y + rotation.y;
	mov s2, v0.s[1]
		// src/f32/neon/mat3a.rs:287
		let z2 = rotation.z + rotation.z;
	mov s3, v0.s[2]
		// src/f32/neon/mat3a.rs:285
		let x2 = rotation.x + rotation.x;
	fadd v4.4s, v0.4s, v0.4s
		// src/f32/neon/mat3a.rs:300
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fmov v19.2s, #1.00000000
	fmov s1, #1.00000000
		// src/f32/neon/mat3a.rs:286
		let y2 = rotation.y + rotation.y;
	fadd s2, s2, s2
		// src/f32/neon/mat3a.rs:287
		let z2 = rotation.z + rotation.z;
	fadd s3, s3, s3
		// src/f32/neon/mat3a.rs:288
		let xx = rotation.x * x2;
	fmul v7.4s, v0.4s, v4.4s
		// src/f32/neon/mat3a.rs:294
		let wx = rotation.w * x2;
	fmul s4, s4, v0.s[3]
		// src/f32/neon/mat3a.rs:291
		let yy = rotation.y * y2;
	fmul s5, s2, v0.s[1]
		// src/f32/neon/mat3a.rs:293
		let zz = rotation.z * z2;
	fmul s6, s3, v0.s[2]
		// src/f32/neon/mat3a.rs:289
		let xy = rotation.x * y2;
	fmul s16, s2, s0
		// src/f32/neon/mat3a.rs:296
		let wz = rotation.w * z2;
	fmul s17, s3, v0.s[3]
		// src/f32/neon/mat3a.rs:295
		let wy = rotation.w * y2;
	fmul s2, s2, v0.s[3]
		// src/f32/neon/mat3a.rs:290
		let xz = rotation.x * z2;
	fmul s20, s3, s0
		// src/f32/neon/mat3a.rs:292
		let yz = rotation.y * z2;
	fmul s0, s3, v0.s[1]
		// src/f32/neon/mat3a.rs:299
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fadd s18, s5, s6
		// src/f32/neon/mat3a.rs:300
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fadd s6, s7, s6
	mov v19.s[0], v16.s[0]
		// src/f32/neon/mat3a.rs:299
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fadd s3, s16, s17
		// src/f32/neon/mat3a.rs:301
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fadd s5, s7, s5
	fsub s16, s0, s4
		// src/f32/neon/mat3a.rs:300
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fadd s0, s0, s4
		// src/f32/neon/mat3a.rs:299
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fsub s18, s1, s18
		// src/f32/neon/mat3a.rs:300
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	mov v17.s[1], v6.s[0]
		// src/f32/neon/mat3a.rs:301
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fadd s6, s20, s2
		// src/f32/neon/mat3a.rs:299
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fsub s2, s20, s2
		// src/f32/neon/mat3a.rs:301
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fsub s1, s1, s5
		// src/f32/neon/vec3a.rs:108
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	mov v18.s[1], v3.s[0]
		// src/f32/neon/mat3a.rs:300
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fsub v3.2s, v19.2s, v17.2s
		// src/f32/neon/vec3a.rs:108
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	mov v6.s[1], v16.s[0]
	mov v18.s[2], v2.s[0]
	mov v3.s[2], v0.s[0]
	mov v6.s[2], v1.s[0]
	mov v18.s[3], v2.s[0]
	mov v3.s[3], v0.s[0]
	mov v6.s[3], v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q18, q3, [x0]
	str q6, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:322
		}
	ret
