.section .text.gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,@function
gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur d3, [x1, #20]
	ldr s6, [x1, #24]
	movi v19.2d, #0000000000000000
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldur d4, [x1, #4]
	ldr s20, [x1, #8]
	movi v22.2d, #0000000000000000
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr s7, [x1, #16]
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldr s5, [x1]
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr s18, [x1, #32]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul s0, s6, s4
	fmul s1, s20, s3
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s16, s7, s20
	fmul s17, s6, s5
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub s2, s0, s1
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s1, s5, s3
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fsub s0, s16, s17
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s17, s7, s4
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur d16, [x1, #36]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub s1, s1, s17
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s17, s18, s2
	fmul s21, s0, s16
	fadd s17, s17, s21
	fmul s21, s1, v16.s[1]
	fadd s17, s21, s17
	movi v21.2d, #0000000000000000
		// src/f32/scalar/mat3a.rs:605
		if det == 0.0 {
	fcmp s17, #0.0
	b.ne .LBB254_2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q19, q21, [x0]
	str q22, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:285
		}
	ret
.LBB254_2:
	mov s19, v16.s[1]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s20, s18, s20
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v22.16b, v3.16b
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s6, s6, s18
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	ext v24.8b, v3.8b, v4.8b, #4
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	rev64 v23.2s, v16.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	zip1 v3.2s, v3.2s, v16.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	dup v2.2s, v2.s[0]
	dup v1.2s, v1.s[0]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v22.s[1], v4.s[1]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	zip1 v4.2s, v16.2s, v4.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s21, s19, s5
	fmul s19, s7, s19
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v7.s[1], v18.s[0]
	mov v18.s[1], v5.s[0]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v16.2s, v16.2s, v24.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fsub s5, s21, s20
	fsub s6, s6, s19
	fmov s19, #1.00000000
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v4.2s, v7.2s, v4.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v20.2s, v23.2s, v22.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v3.2s, v3.2s, v18.2s
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	fdiv s7, s19, s17
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v6.s[1], v5.s[0]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub v3.2s, v4.2s, v3.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub v4.2s, v20.2s, v16.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v6.s[2], v0.s[0]
	mov v4.d[1], v2.d[0]
	mov v3.d[1], v1.d[0]
	mov v6.s[3], v0.s[0]
	fmul v19.4s, v4.4s, v7.s[0]
	fmul v21.4s, v6.4s, v7.s[0]
	fmul v22.4s, v3.4s, v7.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q19, q21, [x0]
	str q22, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:285
		}
	ret
