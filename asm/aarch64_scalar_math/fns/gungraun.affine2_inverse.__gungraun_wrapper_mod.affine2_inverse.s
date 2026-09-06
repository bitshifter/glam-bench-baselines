.section .text.gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse,@function
gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse:
	.cfi_startproc
		// src/f32/scalar/mat2.rs:286
		self.x_axis.x * self.y_axis.y - self.x_axis.y * self.y_axis.x
	ldp s1, s2, [x1]
	fmov s0, #1.00000000
	ldp s4, s3, [x1, #8]
	fmul s5, s1, s3
	fmul s6, s2, s4
	fsub s5, s5, s6
		// src/f32/scalar/mat2.rs:311
		let inv_det = 1.0 / det;
	fdiv s0, s0, s5
		// src/f32/scalar/mat2.rs:314
		self.y_axis.y * inv_det,
	fmul s3, s3, s0
		// src/f32/scalar/mat2.rs:316
		self.y_axis.x * -inv_det,
	fnmul s4, s0, s4
		// src/f32/scalar/mat2.rs:315
		self.x_axis.y * -inv_det,
	fnmul s2, s0, s2
		// src/f32/scalar/mat2.rs:317
		self.x_axis.x * inv_det,
	fmul s0, s1, s0
		// src/f32/affine2.rs:324
		let translation = -(matrix2 * self.translation);
	ldp s1, s5, [x1, #16]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	fmul s6, s1, s3
	fmul s7, s5, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s3, s2, [x0]
		// src/f32/scalar/mat2.rs:362
		(self.x_axis.y * rhs.x) + (self.y_axis.y * rhs.y),
	fmul s1, s1, s2
	fmul s5, s5, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s4, s0, [x0, #8]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	fadd s6, s6, s7
		// src/f32/scalar/mat2.rs:362
		(self.x_axis.y * rhs.x) + (self.y_axis.y * rhs.y),
	fadd s1, s1, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:719
		fn neg(self) -> $t { -self }
	fneg s5, s6
	fneg s1, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s5, s1, [x0, #16]
	//APP
	//NO_APP
		// benches/gungraun.rs:588
		}
	ret
