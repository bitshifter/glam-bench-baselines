.section .text.gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse,@function
gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr d0, [x1, #16]
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldr d2, [x1]
	fmov s1, #1.00000000
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur d3, [x1, #20]
		// src/f32/scalar/mat3a.rs:601
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldur d4, [x1, #4]
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr s17, [x1, #40]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mov v19.16b, v0.16b
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	ext v5.8b, v3.8b, v0.8b, #4
	ext v6.8b, v4.8b, v2.8b, #4
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v7.2s, v3.2s, v2.2s
	fmul v16.2s, v0.2s, v4.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mov v19.s[1], v17.s[0]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v5.2s, v5.2s, v4.2s
	fmul v6.2s, v3.2s, v6.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	zip2 v3.2s, v3.2s, v4.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub v7.2s, v7.2s, v16.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	ext v4.8b, v19.8b, v2.8b, #4
	zip2 v20.2s, v0.2s, v19.2s
	fsub v5.2s, v5.2s, v6.2s
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr d6, [x1, #32]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s18, s17, s7
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v4.2s, v20.2s, v4.2s
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v16.2s, v6.2s, v5.2s
	faddp s16, v16.2s
	fadd s16, s18, s16
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mov v18.16b, v2.16b
	mov v18.s[0], v17.s[0]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v17.16b, v0.16b
	ext v0.8b, v0.8b, v2.8b, #4
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	fdiv s1, s1, s16
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	rev64 v16.2s, v6.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v17.s[1], v2.s[1]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul v2.2s, v6.2s, v3.2s
	fmul v18.2s, v19.2s, v18.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v0.2s, v6.2s, v0.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v3.2s, v16.2s, v3.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v6.2s, v16.2s, v17.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fsub v2.2s, v2.2s, v18.2s
		// src/f32/affine3a.rs:480
		let translation = -(matrix3 * self.translation);
	ldr s18, [x1, #56]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub v3.2s, v4.2s, v3.2s
		// src/f32/affine3a.rs:480
		let translation = -(matrix3 * self.translation);
	ldr d4, [x1, #48]
	rev64 v16.2s, v4.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub v0.2s, v6.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.2s, v2.2s, v1.s[0]
	fmul v3.2s, v3.2s, v1.s[0]
	fmul s6, s1, s5
	fmul s5, s1, v5.s[1]
	fmul v0.2s, v0.2s, v1.s[0]
	fmul s1, s1, s7
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v16.2s, v16.2s, v2.2s
	fmul v17.2s, v4.2s, v3.2s
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmul s7, s6, s4
	fmul s4, s5, v4.s[1]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v19.2s, v0.2s, v18.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s6, s6, [x0, #8]
	str d0, [x0, #32]
	stp s1, s1, [x0, #40]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fadd v16.2s, v16.2s, v17.2s
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmul s17, s18, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s5, s5, [x0, #24]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fadd s4, s7, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmov d7, d3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov v3.s[1], v2.s[1]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fadd v6.2s, v19.2s, v16.2s
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fadd s4, s17, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov v2.s[1], v7.s[1]
	str d3, [x0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:719
		fn neg(self) -> $t { -self }
	fneg v0.2s, v6.2s
	fneg s1, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d2, [x0, #16]
	str d0, [x0, #48]
	stp s1, s1, [x0, #56]
	//APP
	//NO_APP
		// benches/gungraun.rs:612
		}
	ret
