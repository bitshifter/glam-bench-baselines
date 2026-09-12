.section .text.gungraun::mat3_try_inverse::__gungraun_wrapper_mod::mat3_try_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat3_try_inverse::__gungraun_wrapper_mod::mat3_try_inverse,@function
gungraun::mat3_try_inverse::__gungraun_wrapper_mod::mat3_try_inverse:
	.cfi_startproc
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr s1, [x1, #20]
	ldp s6, s0, [x1, #8]
	ldr q17, [x1, #16]
	ldr d2, [x1, #24]
	ldur d19, [x1, #28]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v3.16b, v1.16b
		// src/f32/mat3.rs:533
		let det = self.x_axis.dot(tmp0);
	ldr s7, [x1, #4]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	zip1 v4.2s, v17.2s, v2.2s
	ext v5.8b, v19.8b, v1.8b, #4
	mov v3.s[1], v0.s[0]
	fmul v4.2s, v4.2s, v5.2s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul s5, s17, v2.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v18.2s, v3.2s, v19.2s
		// src/f32/mat3.rs:533
		let det = self.x_axis.dot(tmp0);
	ldr d3, [x1]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mov v16.16b, v3.16b
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub v4.2s, v4.2s, v18.2s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul s18, s0, s19
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mov v16.s[1], v7.s[0]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fsub s5, s18, s5
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v18.2s, v16.2s, v4.2s
	fmul s20, s5, s6
	faddp s18, v18.2s
	fadd s18, s18, s20
		// src/f32/mat3.rs:535
		if det == 0.0 {
	fcmp s18, #0.0
	b.ne .LBB232_2
	movi d0, #0000000000000000
	movi v1.2d, #0000000000000000
	mov w8, wzr
	movi d2, #0000000000000000
	movi d4, #0000000000000000
	movi d3, #0000000000000000
	b .LBB232_3
.LBB232_2:
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v20.16b, v3.16b
	mov v21.16b, v17.16b
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fmul s1, s1, s3
	fmov s23, #1.00000000
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmov v24.4s, #1.00000000
	mov w8, #1
	movi d25, #0000000000000000
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	dup v26.2s, v17.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v20.s[3], v3.s[0]
	mov v21.s[0], v17.s[3]
		// src/f32/mat3.rs:543
		let inv_det = Vec3::splat(1.0 / det);
	fdiv s18, s23, s18
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mov v26.s[0], v2.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v22.16b, v20.16b
	mov v21.s[2], v4.s[1]
	mov v22.s[0], v6.s[0]
	mov v21.s[3], v19.s[1]
	mov v22.s[2], v23.s[0]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	dup v23.2s, v2.s[1]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v17.16b, v21.16b, v17.16b, #12
	dup v19.4s, v22.s[0]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mov v23.s[1], v0.s[0]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fmul s0, s0, s6
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v17.s[2], v25.s[0]
	fmul v2.4s, v21.4s, v22.4s
	trn1 v19.4s, v24.4s, v19.4s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	dup v24.2s, v3.s[0]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fsub s0, s0, s1
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v19.s[0], v20.s[1]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mov v24.s[0], v7.s[0]
	fmul v7.2s, v23.2s, v16.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	dup v16.4s, v18.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v6.4s, v17.4s, v19.4s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul v3.2s, v26.2s, v24.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub v6.4s, v2.4s, v6.4s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fsub v7.2s, v3.2s, v7.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s2, s18, s4
	fmul s3, s5, s18
	fmul s4, s0, s18
	fmul v1.4s, v6.4s, v18.s[0]
	fmul v0.2s, v7.2s, v16.2s
.LBB232_3:
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str w8, [x0]
	str s2, [x0, #4]
	stur q1, [x0, #8]
	stp s4, s3, [x0, #24]
	str d0, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:248
		}
	ret
