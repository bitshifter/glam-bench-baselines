.section .text.gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat,@function
gungraun::mat3a_from_quat::__gungraun_wrapper_mod::mat3a_from_quat:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:336
		let z2 = rotation.z + rotation.z;
	ldp s2, s1, [x1, #4]
	fmov s0, #1.00000000
		// src/f32/scalar/mat3a.rs:334
		let x2 = rotation.x + rotation.x;
	ldr s3, [x1]
		// src/f32/scalar/mat3a.rs:343
		let wx = rotation.w * x2;
	ldr s4, [x1, #12]
		// src/f32/scalar/mat3a.rs:335
		let y2 = rotation.y + rotation.y;
	fadd s5, s2, s2
		// src/f32/scalar/mat3a.rs:336
		let z2 = rotation.z + rotation.z;
	fadd s6, s1, s1
		// src/f32/scalar/mat3a.rs:334
		let x2 = rotation.x + rotation.x;
	fadd s7, s3, s3
		// src/f32/scalar/mat3a.rs:340
		let yy = rotation.y * y2;
	fmul s18, s2, s5
		// src/f32/scalar/mat3a.rs:342
		let zz = rotation.z * z2;
	fmul s1, s1, s6
		// src/f32/scalar/mat3a.rs:343
		let wx = rotation.w * x2;
	fmul s19, s7, s4
		// src/f32/scalar/mat3a.rs:337
		let xx = rotation.x * x2;
	fmul s7, s3, s7
		// src/f32/scalar/mat3a.rs:339
		let xz = rotation.x * z2;
	fmul s16, s3, s6
		// src/f32/scalar/mat3a.rs:344
		let wy = rotation.w * y2;
	fmul s17, s5, s4
		// src/f32/scalar/mat3a.rs:341
		let yz = rotation.y * z2;
	fmul s2, s2, s6
		// src/f32/scalar/mat3a.rs:338
		let xy = rotation.x * y2;
	fmul s3, s3, s5
		// src/f32/scalar/mat3a.rs:348
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fadd s21, s18, s1
		// src/f32/scalar/mat3a.rs:345
		let wz = rotation.w * z2;
	fmul s4, s4, s6
		// src/f32/scalar/mat3a.rs:349
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fadd s1, s7, s1
		// src/f32/scalar/mat3a.rs:350
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fadd s6, s7, s18
		// src/f32/scalar/mat3a.rs:348
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fsub s20, s16, s17
		// src/f32/scalar/mat3a.rs:350
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fadd s5, s16, s17
		// src/f32/scalar/mat3a.rs:349
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fadd s22, s2, s19
		// src/f32/scalar/mat3a.rs:350
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fsub s2, s2, s19
		// src/f32/scalar/mat3a.rs:348
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fsub s7, s0, s21
	fadd s16, s3, s4
		// src/f32/scalar/mat3a.rs:349
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fsub s3, s3, s4
	fsub s1, s0, s1
		// src/f32/scalar/mat3a.rs:350
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fsub s0, s0, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s20, s20, [x0, #8]
	stp s22, s22, [x0, #24]
	stp s5, s2, [x0, #32]
	stp s7, s16, [x0]
	stp s3, s1, [x0, #16]
	stp s0, s0, [x0, #40]
	//APP
	//NO_APP
		// benches/gungraun.rs:322
		}
	ret
