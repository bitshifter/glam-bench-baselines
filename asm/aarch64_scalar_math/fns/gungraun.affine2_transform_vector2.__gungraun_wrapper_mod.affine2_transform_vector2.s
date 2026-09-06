.section .text.gungraun::affine2_transform_vector2::__gungraun_wrapper_mod::affine2_transform_vector2,"ax",@progbits
	.p2align	2
.type	gungraun::affine2_transform_vector2::__gungraun_wrapper_mod::affine2_transform_vector2,@function
gungraun::affine2_transform_vector2::__gungraun_wrapper_mod::affine2_transform_vector2:
		// benches/gungraun.rs:603
		#[bench::args(affine2(), vec2())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// src/f32/affine2.rs:280
		self.matrix2 * rhs
	ldp d2, d3, [x0]
	add x8, sp, #8
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	fmul v0.2s, v2.2s, v0.s[0]
	fmul v1.2s, v3.2s, v1.s[0]
	fadd v0.2s, v0.2s, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d0, [sp, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:606
		}
	ldp s0, s1, [sp, #8]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
