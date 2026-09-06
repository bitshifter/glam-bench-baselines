.section .text.gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2,"ax",@progbits
	.p2align	2
.type	gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2,@function
gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2:
	.cfi_startproc
		// benches/gungraun.rs:203
		black_box(m1 * m2)
	ldp d0, d1, [x1]
	ldr q2, [x2]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	trn1 v3.4s, v2.4s, v2.4s
	trn2 v2.4s, v2.4s, v2.4s
		// benches/gungraun.rs:203
		black_box(m1 * m2)
	mov v0.d[1], v0.d[0]
	mov v1.d[1], v1.d[0]
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	fmul v0.4s, v0.4s, v3.4s
	fmul v1.4s, v1.4s, v2.4s
	fadd v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:204
		}
	ret
