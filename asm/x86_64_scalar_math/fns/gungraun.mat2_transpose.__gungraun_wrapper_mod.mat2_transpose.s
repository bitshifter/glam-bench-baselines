.section .text.gungraun::mat2_transpose::__gungraun_wrapper_mod::mat2_transpose,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_transpose::__gungraun_wrapper_mod::mat2_transpose,@function
gungraun::mat2_transpose::__gungraun_wrapper_mod::mat2_transpose:
	.cfi_startproc
		// src/f32/scalar/mat2.rs:270
		x_axis: Vec2::new(self.x_axis.x, self.y_axis.x),
	movups xmm0, xmmword ptr [rsi]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm0, xmm0, 216
	movups xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:191
		}
	ret
