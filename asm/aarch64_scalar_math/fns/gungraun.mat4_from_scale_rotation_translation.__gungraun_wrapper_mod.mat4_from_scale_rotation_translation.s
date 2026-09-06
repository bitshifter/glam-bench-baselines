.section .text.gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation,@function
gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:187
		let (x, y, z, w) = rotation.into();
	ldp s1, s0, [x2, #4]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movi v21.2d, #0000000000000000
		// src/f32/scalar/mat4.rs:187
		let (x, y, z, w) = rotation.into();
	ldr s5, [x2]
	ldr s2, [x2, #12]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movi v22.2d, #0000000000000000
	movi v23.2d, #0000000000000000
		// src/f32/scalar/mat4.rs:224
		Vec4::from((translation, 1.0)),
	add x8, x3, #8
		// src/f32/scalar/mat4.rs:189
		let y2 = y + y;
	fadd s3, s1, s1
		// src/f32/scalar/mat4.rs:190
		let z2 = z + z;
	fadd s4, s0, s0
		// src/f32/scalar/mat4.rs:188
		let x2 = x + x;
	fadd s6, s5, s5
		// src/f32/scalar/mat4.rs:194
		let yy = y * y2;
	fmul s7, s1, s3
		// src/f32/scalar/mat4.rs:196
		let zz = z * z2;
	fmul s16, s0, s4
	fmov s0, #1.00000000
		// src/f32/scalar/mat4.rs:191
		let xx = x * x2;
	fmul s17, s5, s6
		// src/f32/scalar/mat4.rs:192
		let xy = x * y2;
	fmul s19, s5, s3
		// src/f32/scalar/mat4.rs:199
		let wz = w * z2;
	fmul s20, s2, s4
		// src/f32/scalar/mat4.rs:193
		let xz = x * z2;
	fmul s5, s5, s4
		// src/f32/scalar/mat4.rs:198
		let wy = w * y2;
	fmul s3, s3, s2
		// src/f32/scalar/mat4.rs:195
		let yz = y * z2;
	fmul s1, s1, s4
		// src/f32/scalar/mat4.rs:201
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	fadd s18, s7, s16
		// src/f32/scalar/mat4.rs:197
		let wx = w * x2;
	fmul s2, s6, s2
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fadd s16, s17, s16
		// src/f32/scalar/mat4.rs:203
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fadd s7, s17, s7
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fsub s4, s19, s20
		// src/f32/scalar/mat4.rs:201
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	fadd s19, s19, s20
		// src/f32/scalar/mat4.rs:203
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fadd s6, s5, s3
		// src/f32/scalar/mat4.rs:201
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	fsub s3, s5, s3
	fsub s18, s0, s18
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fsub s16, s0, s16
		// src/f32/scalar/mat4.rs:203
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fsub s0, s0, s7
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v22.s[0], v4.s[0]
		// src/f32/scalar/mat4.rs:203
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fsub s4, s1, s2
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fadd s1, s1, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v23.s[0], v6.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	fmov v2.2s, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v21.s[0], v18.s[0]
	mov v22.s[1], v16.s[0]
	mov v23.s[1], v4.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	ld1 { v2.s }[0], [x8]
		// src/f32/scalar/mat4.rs:224
		Vec4::from((translation, 1.0)),
	ldr d4, [x3]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v21.s[1], v19.s[0]
	mov v22.s[2], v1.s[0]
		// src/f32/scalar/mat4.rs:221
		x_axis.mul(scale.x),
	ldr d1, [x1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov v4.d[1], v2.d[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v23.s[2], v0.s[0]
		// src/f32/scalar/mat4.rs:222
		y_axis.mul(scale.y),
	ldur d0, [x1, #4]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v21.s[2], v3.s[0]
		// src/f32/scalar/mat4.rs:223
		z_axis.mul(scale.z),
	ldr s3, [x1, #8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.4s, v22.4s, v0.s[0]
	fmul v3.4s, v23.4s, v3.s[0]
	fmul v1.4s, v21.4s, v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q3, q4, [x0, #32]
	stp q1, q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:384
		}
	ret
