.section .text.gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,@function
gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur d7, [x1, #20]
	ldr s0, [x1, #24]
	fmov s6, #1.00000000
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldur d17, [x1, #4]
	ldr s1, [x1, #8]
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr s3, [x1, #16]
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldr s18, [x1]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v24.16b, v7.16b
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr s21, [x1, #32]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul s2, s0, s17
	fmul s4, s1, s7
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s5, s3, s1
	fmul s16, s0, s18
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s19, s18, s7
	fmul s20, s3, s17
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v24.s[1], v17.s[1]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s1, s21, s1
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub s2, s2, s4
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fsub s5, s5, s16
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur d16, [x1, #36]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub s4, s19, s20
	zip1 v23.2s, v7.2s, v16.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	ext v7.8b, v7.8b, v17.8b, #4
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s19, s21, s2
	fmul s20, s5, s16
	fmul s22, s4, v16.s[1]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v7.2s, v16.2s, v7.2s
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s19, s19, s20
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	zip1 v20.2s, v16.2s, v17.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mov v17.16b, v16.16b
	mov v17.s[0], v0.s[0]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s19, s22, s19
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v22.16b, v21.16b
	mov v22.s[1], v18.s[0]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	rev64 v18.2s, v16.2s
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	fdiv s6, s6, s19
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v19.16b, v3.16b
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s3, s3, v16.s[1]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v19.s[1], v21.s[0]
	fmul v0.2s, v23.2s, v22.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v16.2s, v18.2s, v24.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mov v3.s[1], v1.s[0]
	fmul v1.2s, v17.2s, v22.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v19.2s, v19.2s, v20.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub v7.2s, v16.2s, v7.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fsub v1.2s, v1.2s, v3.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub v0.2s, v19.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v25.s[2], v6.s[0]
	dup v20.2s, v6.s[0]
	mov v21.16b, v6.16b
	fmul v1.2s, v1.2s, v6.s[0]
	fmul s3, s4, s6
	mov v21.s[1], v5.s[0]
	mov v25.s[3], v2.s[0]
	mov v17.16b, v20.16b
	mov v20.s[1], v5.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d1, [x0, #16]
	stp s3, s3, [x0, #40]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v17.s[1], v2.s[0]
	dup v2.4s, v21.s[0]
	dup v16.4s, v25.s[2]
	mov v20.d[1], v0.d[0]
	mov v2.s[0], v5.s[0]
	mov v7.d[1], v17.d[0]
	zip2 v0.4s, v25.4s, v16.4s
	fmul v2.4s, v20.4s, v2.4s
	fmul v0.4s, v7.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stur q2, [x0, #24]
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:278
		}
	ret
