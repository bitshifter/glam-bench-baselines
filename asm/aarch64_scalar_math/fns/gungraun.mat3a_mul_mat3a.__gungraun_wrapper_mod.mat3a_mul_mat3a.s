.section .text.gungraun::mat3a_mul_mat3a::__gungraun_wrapper_mod::mat3a_mul_mat3a,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_mul_mat3a::__gungraun_wrapper_mod::mat3a_mul_mat3a,@function
gungraun::mat3a_mul_mat3a::__gungraun_wrapper_mod::mat3a_mul_mat3a:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	ldr s0, [x2, #8]
		// src/f32/scalar/mat3a.rs:1032
		self.mul(rhs.x_axis),
	ldr d3, [x1]
		// src/f32/scalar/mat3a.rs:1033
		self.mul(rhs.y_axis),
	add x8, x2, #24
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	ldr d1, [x2]
		// src/f32/scalar/mat3a.rs:1033
		self.mul(rhs.y_axis),
	ldr d7, [x2, #16]
		// src/f32/scalar/mat3a.rs:1032
		self.mul(rhs.x_axis),
	ldr d4, [x1, #16]
	ldur d5, [x1, #4]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	mov v24.16b, v0.16b
		// src/f32/scalar/mat3a.rs:1032
		self.mul(rhs.x_axis),
	ldur d6, [x1, #20]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	zip1 v16.2s, v1.2s, v7.2s
	dup v17.2s, v7.s[0]
	zip2 v18.2s, v1.2s, v7.2s
	dup v19.2s, v7.s[1]
	zip2 v20.2s, v3.2s, v5.2s
	ext v21.8b, v5.8b, v3.8b, #4
	zip2 v22.2s, v4.2s, v6.2s
	ext v23.8b, v6.8b, v4.8b, #4
		// src/f32/scalar/mat3a.rs:1032
		self.mul(rhs.x_axis),
	ldr d2, [x1, #32]
	ldur d7, [x1, #36]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	ld1 { v24.s }[1], [x8]
		// src/f32/scalar/mat3a.rs:1034
		self.mul(rhs.z_axis),
	add x8, x2, #40
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	mov v16.d[1], v17.d[0]
	zip2 v25.2s, v2.2s, v7.2s
	ext v17.8b, v7.8b, v2.8b, #4
	mov v18.d[1], v19.d[0]
	mov v21.d[1], v20.d[0]
	mov v23.d[1], v22.d[0]
	dup v19.4s, v24.s[1]
	movi v20.2s, #128, lsl #24
	mov v17.d[1], v25.d[0]
	zip1 v19.4s, v24.4s, v19.4s
	fmul v16.4s, v21.4s, v16.4s
	fmul v18.4s, v23.4s, v18.4s
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	dup v23.2s, v2.s[0]
	fmov s21, #1.00000000
	zip1 v2.2s, v2.2s, v7.2s
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fadd v16.4s, v16.4s, v18.4s
	fmul v18.4s, v17.4s, v19.4s
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	dup v17.2s, v4.s[0]
		// src/f32/scalar/mat3a.rs:1034
		self.mul(rhs.z_axis),
	ldr d19, [x2, #32]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	zip1 v4.2s, v4.2s, v6.2s
	mov v23.d[1], v7.d[0]
	fmul v0.2s, v2.2s, v0.s[0]
	dup v22.4s, v19.s[1]
	dup v19.4s, v19.s[0]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fadd v16.4s, v16.4s, v18.4s
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmov v18.4s, #1.00000000
	mov v17.d[1], v6.d[0]
	ldur d6, [x2, #4]
	mov v23.s[0], v20.s[0]
	mov v22.s[0], v21.s[0]
	mov v19.s[0], v21.s[0]
	ext v24.16b, v16.16b, v3.16b, #12
	ld1 { v18.s }[1], [x8]
	zip1 v3.2s, v3.2s, v5.2s
	mov v17.s[0], v20.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	add x8, x0, #44
	str s16, [x0, #8]
	stur q16, [x0, #12]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	mov v24.d[1], v5.d[0]
	dup v5.4s, v18.s[1]
	fmul v1.2s, v3.2s, v1.s[0]
	fmul v3.2s, v4.2s, v6.s[0]
	zip1 v4.4s, v18.4s, v5.4s
	fmul v5.4s, v17.4s, v22.4s
	fmul v6.4s, v24.4s, v19.4s
	fadd v1.2s, v1.2s, v3.2s
	fmul v2.4s, v23.4s, v4.4s
	fadd v3.4s, v6.4s, v5.4s
	fadd v0.2s, v1.2s, v0.2s
	fadd v1.4s, v3.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d0, [x0]
	stur q1, [x0, #28]
	st1 { v1.s }[3], [x8]
	//APP
	//NO_APP
		// benches/gungraun.rs:304
		}
	ret
