.section .text.gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero,"ax",@progbits
	.p2align	2
.type	gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero,@function
gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero:
	.cfi_startproc
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr s18, [x1, #20]
	ldp s7, s0, [x1, #8]
	ldr q2, [x1, #16]
	ldr d1, [x1, #24]
	ldur d6, [x1, #28]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v3.16b, v18.16b
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldr s16, [x1, #4]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	zip1 v4.2s, v2.2s, v1.2s
	ext v5.8b, v6.8b, v18.8b, #4
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul s19, s2, v1.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v3.s[1], v0.s[0]
	fmul v4.2s, v4.2s, v5.2s
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldr d5, [x1]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v3.2s, v3.2s, v6.2s
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mov v17.16b, v5.16b
	mov v17.s[1], v16.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub v3.2s, v4.2s, v3.2s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul s4, s0, s6
	fsub s4, s4, s19
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v19.2s, v17.2s, v3.2s
	faddp s19, v19.2s
	fmul s20, s4, s7
	fadd s19, s19, s20
		// src/f32/mat3.rs:537
		if det == 0.0 {
	fcmp s19, #0.0
	b.ne .LBB244_2
	movi d1, #0000000000000000
	movi v2.2d, #0000000000000000
	movi d0, #0000000000000000
	movi d3, #0000000000000000
	movi d5, #0000000000000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s5, [x0]
	stur q2, [x0, #4]
	stp s3, s0, [x0, #20]
	stur d1, [x0, #28]
	//APP
	//NO_APP
		// benches/gungraun.rs:235
		}
	ret
.LBB244_2:
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fmul s18, s18, s5
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	dup v20.2s, v5.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v5.s[3], v5.s[0]
	mov v21.16b, v2.16b
	fmov s23, #1.00000000
	fmov v24.4s, #1.00000000
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	dup v25.2s, v2.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v22.16b, v5.16b
	mov v21.s[0], v2.s[3]
		// src/f32/mat3.rs:543
		let inv_det = Vec3::splat(1.0 / det);
	fdiv s19, s23, s19
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mov v20.s[0], v16.s[0]
	mov v25.s[0], v1.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v22.s[0], v7.s[0]
	mov v21.s[2], v3.s[1]
	mov v22.s[2], v23.s[0]
	movi d23, #0000000000000000
	mov v21.s[3], v6.s[1]
	dup v6.4s, v22.s[0]
	ext v2.16b, v21.16b, v2.16b, #12
	trn1 v6.4s, v24.4s, v6.4s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	dup v24.2s, v1.s[1]
	fmul v1.2s, v25.2s, v20.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v2.s[2], v23.s[0]
	mov v6.s[0], v5.s[1]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mov v24.s[1], v0.s[0]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fmul s0, s0, s7
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v7.4s, v21.4s, v22.4s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul v5.2s, v24.2s, v17.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v2.4s, v2.4s, v6.4s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fsub s6, s0, s18
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s0, s4, s19
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fsub v1.2s, v1.2s, v5.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub v2.4s, v7.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	dup v7.4s, v19.s[0]
	fmul s5, s19, s3
	fmul s3, s6, s19
	fmul v2.4s, v2.4s, v19.s[0]
	fmul v1.2s, v1.2s, v7.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s5, [x0]
	stur q2, [x0, #4]
	stp s3, s0, [x0, #20]
	stur d1, [x0, #28]
	//APP
	//NO_APP
		// benches/gungraun.rs:235
		}
	ret
