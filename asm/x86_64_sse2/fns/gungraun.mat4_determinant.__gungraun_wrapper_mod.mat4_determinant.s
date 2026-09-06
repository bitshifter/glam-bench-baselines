.section .text.gungraun::mat4_determinant::__gungraun_wrapper_mod::mat4_determinant,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_determinant::__gungraun_wrapper_mod::mat4_determinant,@function
gungraun::mat4_determinant::__gungraun_wrapper_mod::mat4_determinant:
		// benches/gungraun.rs:325
		#[bench::args(mat4())]
	.cfi_startproc
	push rax
	.cfi_def_cfa_offset 16
		// benches/gungraun.rs:327
		black_box(m.determinant())
	call qword ptr [rip + <glam::f32::sse2::mat4::Mat4>::determinant@GOTPCREL]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rsp + 4], xmm0
	lea rax, [rsp + 4]
	#APP
	#NO_APP
		// benches/gungraun.rs:328
		}
	movss xmm0, dword ptr [rsp + 4]
	pop rax
	.cfi_def_cfa_offset 8
	ret
