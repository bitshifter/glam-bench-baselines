.section .text.gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2,"ax",@progbits
	.p2align	2
.type	gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2,@function
gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2:
	.cfi_startproc
		// src/f32/affine2.rs:412
		matrix2: self.matrix2 * rhs.matrix2,
	ldp d0, d1, [x1]
	ldr q2, [x2]
		// src/f32/affine2.rs:413
		translation: self.matrix2 * rhs.translation + self.translation,
	ldr d3, [x2, #16]
	ldr s4, [x2, #20]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	trn1 v7.4s, v2.4s, v2.4s
	trn2 v2.4s, v2.4s, v2.4s
		// src/f32/affine2.rs:412
		matrix2: self.matrix2 * rhs.matrix2,
	mov v5.16b, v0.16b
	mov v6.16b, v1.16b
	mov v5.d[1], v0.d[0]
	mov v6.d[1], v1.d[0]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	fmul v0.2s, v0.2s, v3.s[0]
	fmul v1.2s, v1.2s, v4.s[0]
	fmul v3.4s, v5.4s, v7.4s
	fmul v2.4s, v6.4s, v2.4s
	fadd v0.2s, v0.2s, v1.2s
		// src/f32/affine2.rs:413
		translation: self.matrix2 * rhs.translation + self.translation,
	ldr d1, [x1, #16]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	fadd v2.4s, v3.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.2s, v1.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q2, [x0]
	str d0, [x0, #16]
	//APP
	//NO_APP
		// benches/gungraun.rs:594
		}
	ret
