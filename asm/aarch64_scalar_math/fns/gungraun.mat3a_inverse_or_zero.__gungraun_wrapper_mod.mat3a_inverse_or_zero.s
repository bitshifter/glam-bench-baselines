.section .text.gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,@function
gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr d2, [x1, #16]
	ldr d6, [x1, #32]
	movi v16.2d, #0000000000000000
	ldur d3, [x1, #20]
	ldur d17, [x1, #36]
	movi v19.2d, #0000000000000000
		// src/f32/scalar/mat3a.rs:601
		let det = self.x_axis.dot(tmp0);
	ldr d5, [x1]
	ldr s7, [x1, #8]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	ext v0.8b, v17.8b, v6.8b, #4
	ext v1.8b, v3.8b, v2.8b, #4
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v4.2s, v3.2s, v6.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v0.2s, v3.2s, v0.2s
	fmul v1.2s, v1.2s, v17.2s
	fsub v0.2s, v0.2s, v1.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v1.2s, v2.2s, v17.2s
	fsub v1.2s, v1.2s, v4.2s
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v4.2s, v5.2s, v0.2s
	faddp s4, v4.2s
	fmul s18, s7, s1
	fadd s4, s4, s18
	movi v18.2d, #0000000000000000
		// src/f32/scalar/mat3a.rs:603
		if det == 0.0 {
	fcmp s4, #0.0
	b.ne .LBB254_2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q16, q18, [x0]
	str q19, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:285
		}
	ret
.LBB254_2:
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mov s16, v17.s[1]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v20.16b, v6.16b
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s19, s7, s6
	fmul s18, s5, v17.s[1]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul s17, s7, s17
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	ext v6.8b, v6.8b, v2.8b, #4
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mov s21, v3.s[1]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	rev64 v22.2s, v5.2s
	mov v20.s[1], v2.s[1]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s2, s7, s2
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul s7, s7, s3
	fmul s16, s16, v5.s[1]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s3, s5, v3.s[1]
	fsub s18, s18, s19
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v6.2s, v6.2s, v5.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul s5, s21, v5.s[1]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v19.2s, v20.2s, v22.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	dup v20.2s, v0.s[1]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub s16, s17, s16
	fmov s17, #1.00000000
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fsub s2, s2, s3
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub s5, s5, s7
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	fdiv s4, s17, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v20.s[1], v18.s[0]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub v3.2s, v19.2s, v6.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v0.s[1], v16.s[0]
	mov v20.s[2], v2.s[0]
	zip1 v1.2s, v1.2s, v3.2s
	dup v3.2s, v3.s[1]
	mov v0.s[2], v5.s[0]
	mov v20.s[3], v2.s[0]
	mov v1.d[1], v3.d[0]
	mov v0.s[3], v5.s[0]
	fmul v16.4s, v0.4s, v4.s[0]
	fmul v18.4s, v20.4s, v4.s[0]
	fmul v19.4s, v1.4s, v4.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q16, q18, [x0]
	str q19, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:285
		}
	ret
