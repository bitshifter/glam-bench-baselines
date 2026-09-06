.section .text.gungraun::mat4_inverse::__gungraun_wrapper_mod::mat4_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_inverse::__gungraun_wrapper_mod::mat4_inverse,@function
gungraun::mat4_inverse::__gungraun_wrapper_mod::mat4_inverse:
		// benches/gungraun.rs:331
		#[bench::args(mat4_invertible())]
	.cfi_startproc
	push rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov rbx, rdi
		// benches/gungraun.rs:333
		black_box(m.inverse())
	call qword ptr [rip + <glam::f32::sse2::mat4::Mat4>::inverse@GOTPCREL]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	#APP
	#NO_APP
		// benches/gungraun.rs:334
		}
	pop rbx
	.cfi_def_cfa_offset 8
	ret
