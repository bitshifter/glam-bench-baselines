.section .text.gungraun::mat4_inverse::__gungraun_wrapper_mod::mat4_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_inverse::__gungraun_wrapper_mod::mat4_inverse,@function
gungraun::mat4_inverse::__gungraun_wrapper_mod::mat4_inverse:
		// benches/gungraun.rs:331
		#[bench::args(mat4_invertible())]
	.cfi_startproc
	stp x29, x30, [sp, #-32]!
	.cfi_def_cfa_offset 32
	str x19, [sp, #16]
	mov x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov x19, x0
		// benches/gungraun.rs:333
		black_box(m.inverse())
	mov x8, x0
	mov x0, x1
	bl <glam::f32::neon::mat4::Mat4>::inverse
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 32
		// benches/gungraun.rs:334
		}
	ldr x19, [sp, #16]
	ldp x29, x30, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w30
	.cfi_restore w29
	ret
