.section .text.gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero,"ax",@progbits
	.p2align	2
.type	gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero,@function
gungraun::mat3_inverse_or_zero::__gungraun_wrapper_mod::mat3_inverse_or_zero:
	.cfi_startproc
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur q0, [x1, #20]
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldr q6, [x1]
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur d4, [x1, #12]
	ldr s1, [x1, #16]
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldur d5, [x1, #4]
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr s17, [x1, #32]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	dup v3.2s, v0.s[0]
	dup v18.2s, v6.s[0]
	zip1 v2.2s, v0.2s, v4.2s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul s16, s1, s6
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v3.s[0], v1.s[0]
	zip2 v7.2s, v5.2s, v18.2s
	fmul v2.2s, v2.2s, v5.2s
	fmul v7.2s, v3.2s, v7.2s
	fsub v1.2s, v2.2s, v7.2s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul v2.2s, v4.2s, v5.2s
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr d7, [x1, #24]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fsub s2, s16, s2
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v16.2s, v7.2s, v1.2s
	faddp s16, v16.2s
	fmul s19, s17, s2
	fadd s16, s19, s16
		// src/f32/mat3.rs:537
		if det == 0.0 {
	fcmp s16, #0.0
	b.ne .LBB246_2
	movi d0, #0000000000000000
	movi v3.2d, #0000000000000000
	movi d1, #0000000000000000
	movi d5, #0000000000000000
	movi d4, #0000000000000000
	b .LBB246_3
.LBB246_2:
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v19.16b, v6.16b, v0.16b, #12
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	zip2 v18.2s, v4.2s, v18.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v20.16b, v0.16b, v0.16b, #4
	uzp2 v22.4s, v0.4s, v6.4s
	fmov s21, #1.00000000
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	rev64 v23.2s, v7.2s
	zip1 v4.2s, v4.2s, v5.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	uzp1 v19.4s, v6.4s, v19.4s
	rev64 v6.4s, v6.4s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul v18.2s, v7.2s, v18.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v7.s[0], v17.s[0]
	movi d17, #0000000000000000
		// src/f32/mat3.rs:543
		let inv_det = Vec3::splat(1.0 / det);
	fdiv s16, s21, s16
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	trn2 v20.4s, v20.4s, v0.4s
	ext v22.16b, v22.16b, v22.16b, #4
	ext v19.16b, v19.16b, v19.16b, #4
	mov v6.s[1], v21.s[0]
	fmul v3.2s, v3.2s, v7.2s
	mov v20.s[1], v1.s[0]
	mov v22.s[1], v17.s[0]
	mov v19.s[1], v21.s[0]
	mov v6.s[2], v0.s[3]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul v0.2s, v23.2s, v4.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	dup v4.2s, v3.s[1]
	fmul v5.4s, v20.4s, v19.4s
	fmul v6.4s, v22.4s, v6.4s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fsub v0.2s, v0.2s, v18.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub v3.2s, v3.2s, v4.2s
	fsub v5.4s, v5.4s, v6.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	dup v6.4s, v16.s[0]
	fmul s4, s16, s3
	fmul v0.2s, v0.2s, v6.2s
	fmul v3.4s, v5.4s, v16.s[0]
	fmul s5, s16, v1.s[1]
	fmul s1, s2, s16
.LBB246_3:
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s4, [x0]
	stur q3, [x0, #4]
	str s5, [x0, #20]
	str d0, [x0, #24]
	str s1, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:235
		}
	ret
