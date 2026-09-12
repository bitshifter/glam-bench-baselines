.section .text.gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse,@function
gungraun::affine3a_inverse::__gungraun_wrapper_mod::affine3a_inverse:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr d1, [x1, #16]
		// src/f32/scalar/mat3a.rs:601
		let det = self.x_axis.dot(tmp0);
	ldr d2, [x1]
	fmov s0, #1.00000000
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldp s3, s4, [x1, #20]
		// src/f32/scalar/mat3a.rs:601
		let det = self.x_axis.dot(tmp0);
	ldr s16, [x1, #8]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	ext v5.8b, v1.8b, v2.8b, #4
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldp d7, d6, [x1, #32]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v18.16b, v4.16b
		// src/f32/scalar/mat3a.rs:600
		let tmp0 = self.y_axis.cross(self.z_axis);
	rev64 v17.2s, v7.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	zip1 v19.2s, v1.2s, v6.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v20.2s, v5.2s, v6.s[0]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	mov v6.s[1], v2.s[1]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v5.2s, v7.2s, v5.2s
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v18.s[1], v16.s[0]
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul v6.2s, v19.2s, v6.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v19.16b, v1.16b
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul v21.2s, v17.2s, v18.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul v18.2s, v7.2s, v18.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v19.s[1], v2.s[1]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub v20.2s, v20.2s, v21.2s
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fsub v6.2s, v18.2s, v6.2s
		// src/f32/affine3a.rs:480
		let translation = -(matrix3 * self.translation);
	ldr s18, [x1, #56]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v7.2s, v17.2s, v19.2s
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	zip1 v17.2s, v20.2s, v6.2s
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub v5.2s, v7.2s, v5.2s
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v7.2s, v2.2s, v17.2s
	fmul s17, s16, s5
	faddp s7, v7.2s
	fadd s7, s7, s17
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s17, s16, s1
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul s16, s3, s16
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s1, s1, v2.s[1]
		// src/f32/scalar/mat3a.rs:611
		let inv_det = Vec3A::splat(1.0 / det);
	fdiv s0, s0, s7
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fmul s7, s4, s2
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul s4, s4, v2.s[1]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul s2, s3, s2
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub s3, s4, s16
		// src/f32/scalar/vec3a.rs:274
		self.z * rhs.x - rhs.z * self.x,
	fsub s4, s17, s7
		// src/f32/affine3a.rs:480
		let translation = -(matrix3 * self.translation);
	ldr d7, [x1, #48]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub s1, s2, s1
		// src/f32/affine3a.rs:480
		let translation = -(matrix3 * self.translation);
	rev64 v16.2s, v7.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v6.2s, v6.2s, v0.s[0]
	fmul v17.2s, v20.2s, v0.s[0]
	fmul s2, s3, s0
	fmul s3, s4, s0
	fmul v4.2s, v5.2s, v0.s[0]
	fmul s0, s1, s0
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v5.2s, v16.2s, v6.2s
	fmul v16.2s, v7.2s, v17.2s
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmul s1, s2, s7
	fmul s7, s3, v7.s[1]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v19.2s, v4.2s, v18.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s2, s2, [x0, #8]
	stp s0, s0, [x0, #40]
	stp s3, s3, [x0, #24]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fadd v5.2s, v5.2s, v16.2s
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmul s16, s18, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d4, [x0, #32]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fadd s1, s1, s7
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fadd v2.2s, v19.2s, v5.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmov d5, d17
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov v17.s[1], v6.s[1]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fadd s1, s16, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov v6.s[1], v5.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:719
		fn neg(self) -> $t { -self }
	fneg v2.2s, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d17, [x0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:719
		fn neg(self) -> $t { -self }
	fneg s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d6, [x0, #16]
	str d2, [x0, #48]
	stp s0, s0, [x0, #56]
	//APP
	//NO_APP
		// benches/gungraun.rs:612
		}
	ret
