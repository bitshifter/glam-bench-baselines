.section .text.gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation,@function
gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation:
	.cfi_startproc
		// src/f32/neon/vec4.rs:2080
		(v.x, v.y, v.z, v.w)
	mov s1, v0.s[1]
	mov s2, v0.s[2]
		// src/f32/neon/mat4.rs:272
		Vec4::from((translation, 1.0)),
	add x8, x2, #8
		// src/f32/neon/mat4.rs:236
		let x2 = x + x;
	fadd v7.4s, v0.4s, v0.4s
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	movi v21.2d, #0000000000000000
	movi v22.2d, #0000000000000000
		// src/f32/neon/mat4.rs:237
		let y2 = y + y;
	fadd s3, s1, s1
		// src/f32/neon/mat4.rs:238
		let z2 = z + z;
	fadd s4, s2, s2
	fmov s1, #1.00000000
		// src/f32/neon/mat4.rs:239
		let xx = x * x2;
	fmul v17.4s, v0.4s, v7.4s
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	movi v2.2d, #0000000000000000
		// src/f32/neon/mat4.rs:245
		let wx = w * x2;
	fmul s7, s7, v0.s[3]
		// src/f32/neon/mat4.rs:242
		let yy = y * y2;
	fmul s5, s3, v0.s[1]
		// src/f32/neon/mat4.rs:244
		let zz = z * z2;
	fmul s6, s4, v0.s[2]
		// src/f32/neon/mat4.rs:240
		let xy = x * y2;
	fmul s18, s3, s0
		// src/f32/neon/mat4.rs:247
		let wz = w * z2;
	fmul s19, s4, v0.s[3]
		// src/f32/neon/mat4.rs:241
		let xz = x * z2;
	fmul s20, s4, s0
		// src/f32/neon/mat4.rs:246
		let wy = w * y2;
	fmul s3, s3, v0.s[3]
		// src/f32/neon/mat4.rs:243
		let yz = y * z2;
	fmul s0, s4, v0.s[1]
		// src/f32/neon/mat4.rs:249
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	fadd s16, s5, s6
		// src/f32/neon/mat4.rs:250
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fadd s6, s17, s6
		// src/f32/neon/mat4.rs:251
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fadd s5, s17, s5
		// src/f32/neon/mat4.rs:250
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fsub s23, s18, s19
		// src/f32/neon/mat4.rs:251
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fadd s4, s20, s3
		// src/f32/neon/mat4.rs:249
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	fadd s18, s18, s19
	fsub s3, s20, s3
	fsub s16, s1, s16
		// src/f32/neon/mat4.rs:250
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fsub s6, s1, s6
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v22.s[0], v23.s[0]
	mov v2.s[0], v4.s[0]
		// src/f32/neon/mat4.rs:251
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fsub s4, s1, s5
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v21.s[0], v16.s[0]
		// src/f32/neon/mat4.rs:251
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fsub s16, s0, s7
		// src/f32/neon/mat4.rs:250
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fadd s0, s0, s7
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v22.s[1], v6.s[0]
	mov v21.s[1], v18.s[0]
	mov v2.s[1], v16.s[0]
	mov v22.s[2], v0.s[0]
		// src/f32/neon/mat4.rs:269
		x_axis.mul(scale.x),
	ldr s0, [x1]
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v21.s[2], v3.s[0]
		// src/f32/neon/mat4.rs:272
		Vec4::from((translation, 1.0)),
	ldr d3, [x2]
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v2.s[2], v4.s[0]
		// src/f32/neon/mat4.rs:270
		y_axis.mul(scale.y),
	ldur d4, [x1, #4]
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	ld1 { v3.s }[2], [x8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v5.4s, v22.4s, v4.s[0]
	fmul v0.4s, v21.4s, v0.s[0]
	fmul v2.4s, v2.4s, v4.s[1]
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v3.s[3], v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q0, q5, [x0]
	stp q2, q3, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:384
		}
	ret
