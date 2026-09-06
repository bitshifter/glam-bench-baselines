.section .text.gungraun::affine3a_transform_point3a::__gungraun_wrapper_mod::affine3a_transform_point3a,"ax",@progbits
	.p2align	2
.type	gungraun::affine3a_transform_point3a::__gungraun_wrapper_mod::affine3a_transform_point3a,@function
gungraun::affine3a_transform_point3a::__gungraun_wrapper_mod::affine3a_transform_point3a:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	ldur d1, [x2, #4]
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	ldp q2, q6, [x1, #32]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmov v0.4s, #1.00000000
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	add x8, x1, #40
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmov v3.4s, #1.00000000
	dup v4.4s, v1.s[1]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	ldr s5, [x2]
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	add x9, x1, #24
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	ld1 { v2.s }[2], [x8]
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	add x8, x1, #8
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	mov v0.s[3], v5.s[0]
	ext v4.16b, v4.16b, v1.16b, #4
	ld1 { v3.s }[3], [x9]
	ld1 { v2.s }[3], [x8]
	fmul v0.4s, v2.4s, v0.4s
	fmul v2.4s, v4.4s, v3.4s
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v3.4s, v0.4s, v2.4s
	fadd v0.4s, v0.4s, v2.4s
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	ldr d2, [x1, #16]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v1.2s, v2.2s, v1.s[0]
	mov v3.s[3], v0.s[3]
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	ldr d0, [x1]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v0.2s, v0.2s, v5.s[0]
	rev64 v2.4s, v3.4s
	fadd v0.2s, v0.2s, v1.2s
	ext v1.16b, v2.16b, v2.16b, #8
		// src/f32/affine3a.rs:426
		self.matrix3 * rhs + self.translation
	ldr s2, [x1, #56]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	mov v6.s[2], v2.s[0]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	mov v0.d[1], v1.d[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	mov v6.s[3], v2.s[0]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fadd v0.4s, v3.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.4s, v6.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:624
		}
	ret
