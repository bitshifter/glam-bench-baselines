.section .text.gungraun::mat2_mul_transpose_vec2::__gungraun_wrapper_mod::mat2_mul_transpose_vec2,"ax",@progbits
	.p2align	2
.type	gungraun::mat2_mul_transpose_vec2::__gungraun_wrapper_mod::mat2_mul_transpose_vec2,@function
gungraun::mat2_mul_transpose_vec2::__gungraun_wrapper_mod::mat2_mul_transpose_vec2:
		// benches/gungraun.rs:213
		#[bench::args(mat2(), vec2())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// src/f32/vec2.rs:188
		(self.x * rhs.x) + (self.y * rhs.y)
	ldr s2, [x0, #12]
	add x8, sp, #8
	mov v1.s[1], v0.s[0]
	ld1 { v2.s }[1], [x0]
	fmul v0.2s, v1.2s, v2.2s
		// src/f32/scalar/mat2.rs:370
		Vec2::new(self.x_axis.dot(rhs), self.y_axis.dot(rhs))
	ldur d2, [x0, #4]
		// src/f32/vec2.rs:188
		(self.x * rhs.x) + (self.y * rhs.y)
	fmul v1.2s, v1.2s, v2.2s
	rev64 v0.2s, v0.2s
	fadd v0.2s, v1.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d0, [sp, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:216
		}
	ldp s0, s1, [sp, #8]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
