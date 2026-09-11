.section .text.gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse,@function
gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur d3, [x1, #20]
	ldr s4, [x1, #24]
	ldur d7, [x1, #36]
	ldr s6, [x1, #40]
	ldr s5, [x1, #16]
	ldr s16, [x1, #32]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul s1, s4, s7
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldr s19, [x1]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul s0, s6, s3
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s2, s4, s16
	fmul s17, s5, s6
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s18, s16, s3
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub s1, s0, s1
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fsub s0, s2, s17
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s2, s5, s7
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldur d17, [x1, #4]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub s2, s2, s18
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s18, s19, s1
	fmul s20, s0, s17
	fadd s18, s18, s20
	fmul s20, s2, v17.s[1]
	fadd s18, s18, s20
		// src/f32/scalar/mat3a.rs:605
		if det == 0.0 {
	fcmp s18, #0.0
	b.ne .LBB240_2
	movi v1.2d, #0000000000000000
	movi v0.2d, #0000000000000000
	movi v2.2d, #0000000000000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp xzr, xzr, [x0]
	stp q1, q0, [x0, #16]
	str q2, [x0, #48]
	//APP
	//NO_APP
		// benches/gungraun.rs:298
		}
	ret
.LBB240_2:
	mov s20, v17.s[1]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v21.16b, v7.16b
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s24, s16, s17
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	rev64 v22.2s, v17.2s
	ext v23.8b, v7.8b, v3.8b, #4
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s7, s7, s19
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s6, s6, s19
	fmul s4, s4, s19
	mov w8, #1
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v21.s[1], v3.s[1]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s3, s3, s19
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s16, s16, s20
	fmul s20, s5, s20
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s5, s5, s17
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v17.2s, v23.2s, v17.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub s7, s24, s7
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v19.2s, v21.2s, v22.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fsub s6, s6, s16
	fmov s16, #1.00000000
	fsub s4, s20, s4
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub s3, s3, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v2.s[1], v7.s[0]
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	fdiv s5, s16, s18
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub v16.2s, v19.2s, v17.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v0.s[1], v6.s[0]
	mov v2.s[2], v3.s[0]
	zip1 v6.4s, v16.4s, v16.4s
	mov v0.s[2], v4.s[0]
	mov v2.s[3], v3.s[0]
	mov v6.s[0], v1.s[0]
	mov v0.s[3], v4.s[0]
	fmul v1.4s, v6.4s, v5.s[0]
	fmul v0.4s, v0.4s, v5.s[0]
	fmul v2.4s, v2.4s, v5.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp x8, xzr, [x0]
	stp q1, q0, [x0, #16]
	str q2, [x0, #48]
	//APP
	//NO_APP
		// benches/gungraun.rs:298
		}
	ret
