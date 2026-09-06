.section .text.gungraun::mat4_from_quat::__gungraun_wrapper_mod::mat4_from_quat,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_from_quat::__gungraun_wrapper_mod::mat4_from_quat,@function
gungraun::mat4_from_quat::__gungraun_wrapper_mod::mat4_from_quat:
	.cfi_startproc
		// src/f32/neon/vec4.rs:2051
		(v.x, v.y, v.z, v.w)
	mov s2, v0.s[1]
	mov s3, v0.s[2]
	adrp x8, .LCPI198_0
		// src/f32/neon/mat4.rs:186
		let x2 = x + x;
	fadd v6.4s, v0.4s, v0.4s
	fmov s1, #1.00000000
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	movi v20.2d, #0000000000000000
	movi v21.2d, #0000000000000000
	movi v22.2d, #0000000000000000
		// src/f32/neon/mat4.rs:187
		let y2 = y + y;
	fadd s2, s2, s2
		// src/f32/neon/mat4.rs:188
		let z2 = z + z;
	fadd s3, s3, s3
		// src/f32/neon/mat4.rs:189
		let xx = x * x2;
	fmul v16.4s, v0.4s, v6.4s
		// src/f32/neon/mat4.rs:195
		let wx = w * x2;
	fmul s6, s6, v0.s[3]
		// src/f32/neon/mat4.rs:192
		let yy = y * y2;
	fmul s4, s2, v0.s[1]
		// src/f32/neon/mat4.rs:194
		let zz = z * z2;
	fmul s5, s3, v0.s[2]
		// src/f32/neon/mat4.rs:190
		let xy = x * y2;
	fmul s17, s2, s0
		// src/f32/neon/mat4.rs:197
		let wz = w * z2;
	fmul s18, s3, v0.s[3]
		// src/f32/neon/mat4.rs:191
		let xz = x * z2;
	fmul s19, s3, s0
		// src/f32/neon/mat4.rs:196
		let wy = w * y2;
	fmul s2, s2, v0.s[3]
		// src/f32/neon/mat4.rs:193
		let yz = y * z2;
	fmul s0, s3, v0.s[1]
		// src/f32/neon/mat4.rs:199
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	fadd s7, s4, s5
		// src/f32/neon/mat4.rs:200
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fadd s5, s16, s5
		// src/f32/neon/mat4.rs:201
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fadd s4, s16, s4
		// src/f32/neon/mat4.rs:200
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fsub s23, s17, s18
		// src/f32/neon/mat4.rs:201
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fadd s3, s19, s2
		// src/f32/neon/mat4.rs:199
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	fadd s17, s17, s18
	fsub s2, s19, s2
	fsub s7, s1, s7
		// src/f32/neon/mat4.rs:200
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fsub s5, s1, s5
		// src/f32/neon/mat4.rs:201
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fsub s1, s1, s4
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v22.s[0], v23.s[0]
	mov v20.s[0], v3.s[0]
	mov v21.s[0], v7.s[0]
		// src/f32/neon/mat4.rs:201
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	fsub s7, s0, s6
		// src/f32/neon/mat4.rs:200
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	fadd s0, s0, s6
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v22.s[1], v5.s[0]
	mov v21.s[1], v17.s[0]
	mov v20.s[1], v7.s[0]
	mov v22.s[2], v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	ldr q0, [x8, :lo12:.LCPI198_0]
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v21.s[2], v2.s[0]
	mov v20.s[2], v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q21, q22, [x0]
	stp q20, q0, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:378
		}
	ret
