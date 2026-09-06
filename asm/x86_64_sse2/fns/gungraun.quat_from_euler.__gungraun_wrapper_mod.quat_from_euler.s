.section .text.gungraun::quat_from_euler::__gungraun_wrapper_mod::quat_from_euler,"ax",@progbits
	.p2align	4
.type	gungraun::quat_from_euler::__gungraun_wrapper_mod::quat_from_euler,@function
gungraun::quat_from_euler::__gungraun_wrapper_mod::quat_from_euler:
		// benches/gungraun.rs:423
		#[bench::args(EulerRot::YXZ, bb_f32(), bb_f32(), bb_f32())]
	.cfi_startproc
	push rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov rbx, rdi
		// src/f32/sse2/quat.rs:198
		Self::from_euler_angles(euler, a, b, c)
	call qword ptr [rip + <glam::f32::sse2::quat::Quat as glam::euler::FromEuler>::from_euler_angles@GOTPCREL]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	#APP
	#NO_APP
		// benches/gungraun.rs:426
		}
	pop rbx
	.cfi_def_cfa_offset 8
	ret
