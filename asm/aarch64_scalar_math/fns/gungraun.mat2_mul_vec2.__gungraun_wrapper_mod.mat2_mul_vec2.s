.section .text.gungraun::mat2_mul_vec2::__gungraun_wrapper_mod::mat2_mul_vec2,"ax",@progbits
	.p2align	2
.type	gungraun::mat2_mul_vec2::__gungraun_wrapper_mod::mat2_mul_vec2,@function
gungraun::mat2_mul_vec2::__gungraun_wrapper_mod::mat2_mul_vec2:
		// benches/gungraun.rs:207
		#[bench::args(mat2(), vec2())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// src/f32/scalar/mat2.rs:361
		(self.x_axis.x * rhs.x) + (self.y_axis.x * rhs.y),
	ldp d2, d3, [x0]
	add x8, sp, #8
	fmul v0.2s, v2.2s, v0.s[0]
	fmul v1.2s, v3.2s, v1.s[0]
	fadd v0.2s, v0.2s, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d0, [sp, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:210
		}
	ldp s0, s1, [sp, #8]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
