.section .text.gungraun::mat4_inverse_or_zero::__gungraun_wrapper_mod::mat4_inverse_or_zero,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_inverse_or_zero::__gungraun_wrapper_mod::mat4_inverse_or_zero,@function
gungraun::mat4_inverse_or_zero::__gungraun_wrapper_mod::mat4_inverse_or_zero:
		// benches/gungraun.rs:337
		#[bench::success(mat4_invertible())]
	.cfi_startproc
	push rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov rbx, rdi
		// benches/gungraun.rs:340
		black_box(m.inverse_or_zero())
	call qword ptr [rip + <glam::f32::scalar::mat4::Mat4>::inverse_or_zero@GOTPCREL]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	#APP
	#NO_APP
		// benches/gungraun.rs:341
		}
	pop rbx
	.cfi_def_cfa_offset 8
	ret
