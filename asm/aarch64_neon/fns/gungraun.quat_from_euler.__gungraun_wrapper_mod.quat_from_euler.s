.section .text.gungraun::quat_from_euler::__gungraun_wrapper_mod::quat_from_euler,"ax",@progbits
	.p2align	2
.type	gungraun::quat_from_euler::__gungraun_wrapper_mod::quat_from_euler,@function
gungraun::quat_from_euler::__gungraun_wrapper_mod::quat_from_euler:
		// benches/gungraun.rs:423
		#[bench::args(EulerRot::YXZ, bb_f32(), bb_f32(), bb_f32())]
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
		// src/f32/neon/quat.rs:195
		Self::from_euler_angles(euler, a, b, c)
	mov x8, x0
	mov w0, w1
	bl <glam::f32::neon::quat::Quat as glam::euler::FromEuler>::from_euler_angles
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 32
		// benches/gungraun.rs:426
		}
	ldr x19, [sp, #16]
	ldp x29, x30, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w30
	.cfi_restore w29
	ret
