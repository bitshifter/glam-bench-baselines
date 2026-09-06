.section .text.gungraun::mat4_from_quat::__gungraun_wrapper_mod::mat4_from_quat,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_from_quat::__gungraun_wrapper_mod::mat4_from_quat,@function
gungraun::mat4_from_quat::__gungraun_wrapper_mod::mat4_from_quat:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:187
		let (x, y, z, w) = rotation.into();
	ldp s1, s2, [x1]
	fmov s0, #1.00000000
	ldp s3, s5, [x1, #8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	adrp x8, .Lanon.9edcd8c296556bc1c3f4a22a19be224a.360
	add x8, x8, :lo12:.Lanon.9edcd8c296556bc1c3f4a22a19be224a.360
	str wzr, [x0, #12]
		// src/f32/scalar/mat4.rs:188
		let x2 = x + x;
	fadd s4, s1, s1
		// src/f32/scalar/mat4.rs:189
		let y2 = y + y;
	fadd s6, s2, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str wzr, [x0, #28]
		// src/f32/scalar/mat4.rs:190
		let z2 = z + z;
	fadd s7, s3, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str wzr, [x0, #44]
		// src/f32/scalar/mat4.rs:191
		let xx = x * x2;
	fmul s16, s1, s4
		// src/f32/scalar/mat4.rs:192
		let xy = x * y2;
	fmul s17, s1, s6
		// src/f32/scalar/mat4.rs:193
		let xz = x * z2;
	fmul s1, s1, s7
		// src/f32/scalar/mat4.rs:194
		let yy = y * y2;
	fmul s18, s2, s6
		// src/f32/scalar/mat4.rs:198
		let wy = w * y2;
	fmul s6, s6, s5
		// src/f32/scalar/mat4.rs:196
		let zz = z * z2;
	fmul s3, s3, s7
		// src/f32/scalar/mat4.rs:195
		let yz = y * z2;
	fmul s2, s2, s7
		// src/f32/scalar/mat4.rs:197
		let wx = w * x2;
	fmul s4, s4, s5
		// src/f32/scalar/mat4.rs:199
		let wz = w * z2;
	fmul s19, s5, s7
		// src/f32/scalar/mat4.rs:201
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	fsub s5, s1, s6
	fadd s7, s18, s3
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fadd s3, s16, s3
	fadd s21, s2, s4
		// src/f32/scalar/mat4.rs:203
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fsub s2, s2, s4
	fadd s4, s16, s18
	fadd s1, s1, s6
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fsub s20, s17, s19
		// src/f32/scalar/mat4.rs:201
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	fadd s6, s17, s19
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s5, [x0, #8]
		// src/f32/scalar/mat4.rs:201
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	fsub s5, s0, s7
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fsub s3, s0, s3
		// src/f32/scalar/mat4.rs:203
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fsub s0, s0, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s21, [x0, #24]
	stp s1, s2, [x0, #32]
	ldr q1, [x8]
	stp s20, s3, [x0, #16]
	stp s5, s6, [x0]
	str s0, [x0, #40]
	str q1, [x0, #48]
	//APP
	//NO_APP
		// benches/gungraun.rs:378
		}
	ret
