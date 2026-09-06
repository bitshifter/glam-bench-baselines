.section .text.gungraun::mat2_determinant::__gungraun_wrapper_mod::mat2_determinant,"ax",@progbits
	.p2align	2
.type	gungraun::mat2_determinant::__gungraun_wrapper_mod::mat2_determinant,@function
gungraun::mat2_determinant::__gungraun_wrapper_mod::mat2_determinant:
		// benches/gungraun.rs:169
		#[bench::args(mat2())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// src/f32/scalar/mat2.rs:286
		self.x_axis.x * self.y_axis.y - self.x_axis.y * self.y_axis.x
	ldp d1, d0, [x0]
	add x8, sp, #12
	rev64 v0.2s, v0.2s
	fmul v0.2s, v1.2s, v0.2s
	dup v1.2s, v0.s[1]
	fsub v0.2s, v0.2s, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:172
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
