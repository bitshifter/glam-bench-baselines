.section .text.gungraun::affine3a_mul_affine3a::__gungraun_wrapper_mod::affine3a_mul_affine3a,"ax",@progbits
	.p2align	2
.type	gungraun::affine3a_mul_affine3a::__gungraun_wrapper_mod::affine3a_mul_affine3a,@function
gungraun::affine3a_mul_affine3a::__gungraun_wrapper_mod::affine3a_mul_affine3a:
	.cfi_startproc
		// src/f32/affine3a.rs:575
		matrix3: self.matrix3 * rhs.matrix3,
	ldr d0, [x1]
	ldr d17, [x1, #16]
		// src/f32/scalar/mat3a.rs:1033
		self.mul(rhs.y_axis),
	add x8, x2, #24
		// src/f32/affine3a.rs:575
		matrix3: self.matrix3 * rhs.matrix3,
	ldp s5, s1, [x1, #4]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	ldr d16, [x2]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	ext v3.16b, v0.16b, v0.16b, #12
		// src/f32/scalar/mat3a.rs:1033
		self.mul(rhs.y_axis),
	ldr d22, [x2, #16]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	ext v6.16b, v0.16b, v17.16b, #12
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	dup v27.2s, v17.s[0]
		// src/f32/affine3a.rs:575
		matrix3: self.matrix3 * rhs.matrix3,
	ldp s20, s4, [x1, #20]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	ldp s21, s7, [x2, #4]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	zip1 v18.2s, v16.2s, v22.2s
		// src/f32/affine3a.rs:575
		matrix3: self.matrix3 * rhs.matrix3,
	ldr d2, [x1, #32]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	dup v25.2s, v22.s[0]
	zip2 v19.2s, v16.2s, v22.2s
	mov v3.s[0], v1.s[0]
	dup v26.2s, v22.s[1]
	mov v6.s[0], v4.s[0]
		// src/f32/affine3a.rs:575
		matrix3: self.matrix3 * rhs.matrix3,
	ldp s28, s22, [x1, #36]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v29.2s, v0.2s, v16.2s
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	ext v24.16b, v0.16b, v2.16b, #12
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul s30, s21, s17
	mov v27.s[0], v5.s[0]
	fmul s23, s7, s2
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	mov v18.d[1], v25.d[0]
		// src/f32/scalar/mat3a.rs:777
		self.x_axis.y * rhs.x + self.y_axis.y * rhs.y + self.z_axis.y * rhs.z,
	fmul s5, s5, s16
	fmul s17, s28, s7
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	ld1 { v7.s }[1], [x8]
	mov v3.s[3], v1.s[0]
		// src/f32/affine3a.rs:576
		translation: self.matrix3 * rhs.translation + self.translation,
	ldr d16, [x2, #48]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	mov v6.s[3], v4.s[0]
	mov v19.d[1], v26.d[0]
	mov v24.s[0], v22.s[0]
		// src/f32/scalar/mat3a.rs:777
		self.x_axis.y * rhs.x + self.y_axis.y * rhs.y + self.z_axis.y * rhs.z,
	fmul s21, s20, s21
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	mov v0.s[1], v20.s[0]
	fadd s26, s29, s30
	fmul v29.2s, v27.2s, v16.2s
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	dup v25.4s, v7.s[1]
	fmul v3.4s, v3.4s, v18.4s
		// src/f32/scalar/mat3a.rs:1034
		self.mul(rhs.z_axis),
	ldr d18, [x2, #32]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	mov v2.s[1], v28.s[0]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmul v6.4s, v6.4s, v19.4s
		// src/f32/scalar/mat3a.rs:1034
		self.mul(rhs.z_axis),
	ldr s20, [x2, #40]
		// src/f32/affine3a.rs:576
		translation: self.matrix3 * rhs.translation + self.translation,
	ldr s19, [x2, #56]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	mov v24.s[3], v22.s[0]
	zip1 v7.4s, v7.4s, v25.4s
		// src/f32/scalar/mat3a.rs:777
		self.x_axis.y * rhs.x + self.y_axis.y * rhs.y + self.z_axis.y * rhs.z,
	fadd s5, s5, s21
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmul s21, s1, s18
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v25.2s, v27.2s, v18.2s
	rev64 v27.2s, v29.2s
	fmul v28.2s, v0.2s, v16.2s
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmul s29, s4, v18.s[1]
	fmul s1, s1, s16
	fmul s4, s4, v16.s[1]
	fmul s16, s22, s20
	fadd v3.4s, v3.4s, v6.4s
	fmul v6.4s, v24.4s, v7.4s
	fmul s7, s22, s19
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v0.2s, v0.2s, v18.2s
	rev64 v22.2s, v25.2s
	fadd s18, s26, s23
	fmul v19.2s, v2.2s, v19.s[0]
	fadd v23.2s, v27.2s, v28.2s
		// src/f32/scalar/mat3a.rs:777
		self.x_axis.y * rhs.x + self.y_axis.y * rhs.y + self.z_axis.y * rhs.z,
	fadd s5, s5, s17
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fadd s17, s21, s29
	fadd s1, s1, s4
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v2.2s, v2.2s, v20.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	add x8, x0, #28
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fadd v3.4s, v3.4s, v6.4s
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fadd v0.2s, v22.2s, v0.2s
	fadd v4.2s, v23.2s, v19.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s18, s5, [x0]
		// src/f32/affine3a.rs:576
		translation: self.matrix3 * rhs.translation + self.translation,
	ldr s5, [x1, #56]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fadd s1, s1, s7
		// src/f32/affine3a.rs:576
		translation: self.matrix3 * rhs.translation + self.translation,
	ldr d7, [x1, #48]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fadd s6, s17, s16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s3, [x0, #8]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fadd v0.2s, v0.2s, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stur q3, [x0, #12]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v2.2s, v7.2s, v4.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	st1 { v3.s }[3], [x8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s1, s1, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s6, s6, [x0, #40]
	str d0, [x0, #32]
	str d2, [x0, #48]
	stp s1, s1, [x0, #56]
	//APP
	//NO_APP
		// benches/gungraun.rs:618
		}
	ret
