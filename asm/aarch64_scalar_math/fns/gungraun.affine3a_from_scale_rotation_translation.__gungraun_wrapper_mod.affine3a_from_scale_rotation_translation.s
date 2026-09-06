.section .text.gungraun::affine3a_from_scale_rotation_translation::__gungraun_wrapper_mod::affine3a_from_scale_rotation_translation,"ax",@progbits
	.p2align	2
.type	gungraun::affine3a_from_scale_rotation_translation::__gungraun_wrapper_mod::affine3a_from_scale_rotation_translation,@function
gungraun::affine3a_from_scale_rotation_translation::__gungraun_wrapper_mod::affine3a_from_scale_rotation_translation:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:284
		let z2 = rotation.z + rotation.z;
	ldp s2, s0, [x2, #4]
	fmov s22, #1.00000000
		// src/f32/scalar/mat3a.rs:282
		let x2 = rotation.x + rotation.x;
	ldr s1, [x2]
		// src/f32/scalar/mat3a.rs:291
		let wx = rotation.w * x2;
	ldr s3, [x2, #12]
		// src/f32/scalar/mat3a.rs:297
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fmov v23.2s, #1.00000000
		// src/f32/affine3a.rs:250
		translation: translation.into(),
	add x8, x3, #8
		// src/f32/scalar/mat3a.rs:284
		let z2 = rotation.z + rotation.z;
	fadd s4, s0, s0
		// src/f32/scalar/mat3a.rs:282
		let x2 = rotation.x + rotation.x;
	fadd s5, s1, s1
		// src/f32/scalar/mat3a.rs:283
		let y2 = rotation.y + rotation.y;
	fadd s6, s2, s2
		// src/f32/scalar/mat3a.rs:287
		let xz = rotation.x * z2;
	fmul s7, s1, s4
		// src/f32/scalar/mat3a.rs:289
		let yz = rotation.y * z2;
	fmul s16, s2, s4
		// src/f32/scalar/mat3a.rs:285
		let xx = rotation.x * x2;
	fmul s17, s1, s5
		// src/f32/scalar/mat3a.rs:288
		let yy = rotation.y * y2;
	fmul s2, s2, s6
		// src/f32/scalar/mat3a.rs:291
		let wx = rotation.w * x2;
	fmul s5, s5, s3
		// src/f32/scalar/mat3a.rs:292
		let wy = rotation.w * y2;
	fmul s18, s6, s3
		// src/f32/scalar/mat3a.rs:290
		let zz = rotation.z * z2;
	fmul s19, s0, s4
		// src/f32/scalar/mat3a.rs:286
		let xy = rotation.x * y2;
	fmul s1, s1, s6
		// src/f32/scalar/mat3a.rs:293
		let wz = rotation.w * z2;
	fmul s3, s3, s4
		// src/f32/scalar/mat3a.rs:298
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fadd s20, s17, s2
	fsub s21, s16, s5
	fadd s0, s7, s18
		// src/f32/scalar/mat3a.rs:296
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fsub s7, s7, s18
		// src/f32/scalar/mat3a.rs:297
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fadd s4, s17, s19
	fadd s5, s16, s5
	mov v23.s[0], v1.s[0]
		// src/f32/scalar/mat3a.rs:296
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fadd s16, s1, s3
		// src/f32/affine3a.rs:246
		rotation.x_axis * scale.x,
	ldp s17, s1, [x1]
		// src/f32/scalar/mat3a.rs:298
		Vec3A::new(xz + wy, yz - wx, 1.0 - (xx + yy)),
	fsub s6, s22, s20
		// src/f32/scalar/mat3a.rs:296
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fadd s2, s2, s19
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v0.s[1], v21.s[0]
		// src/f32/scalar/mat3a.rs:297
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	mov v3.s[1], v4.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s4, s17, s7
		// src/f32/affine3a.rs:248
		rotation.z_axis * scale.z,
	ldr s7, [x1, #8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s5, s5, s1
	fmul s16, s17, s16
		// src/f32/scalar/mat3a.rs:296
		Vec3A::new(1.0 - (yy + zz), xy + wz, xz - wy),
	fsub s2, s22, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v0.s[2], v6.s[0]
		// src/f32/scalar/mat3a.rs:297
		Vec3A::new(xy - wz, 1.0 - (xx + zz), yz + wx),
	fsub v3.2s, v23.2s, v3.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s4, s4, [x0, #8]
		// src/f32/affine3a.rs:250
		translation: translation.into(),
	ldr d4, [x3]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s5, s5, [x0, #24]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s2, s17, s2
	mov v0.s[3], v6.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	ld1r { v6.2s }, [x8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.2s, v3.2s, v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov v4.d[1], v6.d[0]
	stp s2, s16, [x0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.4s, v0.4s, v7.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d1, [x0, #16]
	stp q0, q4, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:576
		}
	ret
