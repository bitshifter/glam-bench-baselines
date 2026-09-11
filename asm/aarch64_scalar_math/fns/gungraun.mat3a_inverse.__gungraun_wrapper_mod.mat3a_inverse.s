.section .text.gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,@function
gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur d2, [x1, #36]
	ldur d1, [x1, #20]
	fmov s0, #1.00000000
	ldr s5, [x1, #32]
	ldr d6, [x1, #16]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	add x8, x0, #28
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	dup v3.2s, v2.s[1]
	dup v4.2s, v1.s[1]
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldur d17, [x1, #4]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v20.16b, v1.16b
	rev64 v21.2s, v2.2s
	ext v23.8b, v1.8b, v17.8b, #4
	mov v4.d[1], v3.d[0]
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldr d3, [x1]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v20.s[1], v17.s[1]
	rev64 v7.4s, v3.4s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	dup v22.2s, v3.s[0]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v4.s[1], v5.s[0]
	fmul v20.2s, v21.2s, v20.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v21.2s, v6.2s, v17.2s
	mov v22.s[0], v5.s[0]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	rev64 v16.4s, v4.4s
	mov v4.s[3], v6.s[0]
	zip1 v7.4s, v7.4s, v4.4s
	ext v16.16b, v16.16b, v16.16b, #8
	mov v7.s[3], v17.s[1]
	mov v16.s[0], v6.s[1]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v6.s[1], v5.s[0]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	zip2 v18.4s, v7.4s, v4.4s
	fmul v4.4s, v4.4s, v7.4s
	ext v19.16b, v7.16b, v18.16b, #12
	fmul v7.2s, v2.2s, v23.2s
	ext v18.16b, v18.16b, v19.16b, #8
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	zip1 v19.2s, v1.2s, v2.2s
	zip1 v2.2s, v2.2s, v17.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub v7.2s, v20.2s, v7.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v1.2s, v1.2s, v3.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v5.4s, v16.4s, v18.4s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v16.2s, v19.2s, v22.2s
	fmul v2.2s, v6.2s, v2.2s
	fsub v1.2s, v1.2s, v21.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub v4.4s, v4.4s, v5.4s
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v5.2s, v3.2s, v7.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub v2.2s, v2.2s, v16.2s
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldr s16, [x1, #8]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s6, s17, v4.s[1]
	fmul s16, s16, s2
	fadd s5, s5, s6
	fadd s5, s5, s16
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	fdiv s0, s0, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	dup v3.4s, v0.s[0]
	fmul v4.4s, v4.4s, v0.s[0]
	fmul s0, s0, s1
	fmul v5.2s, v7.2s, v3.2s
	fmul v2.2s, v2.2s, v3.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s4, [x0, #8]
	stur q4, [x0, #12]
	st1 { v4.s }[3], [x8]
	str d5, [x0]
	str d2, [x0, #32]
	stp s0, s0, [x0, #40]
	//APP
	//NO_APP
		// benches/gungraun.rs:278
		}
	ret
