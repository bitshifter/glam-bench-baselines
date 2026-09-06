.section .text.gungraun::quat_from_axis_angle::__gungraun_wrapper_mod::quat_from_axis_angle,"ax",@progbits
	.p2align	4
.type	gungraun::quat_from_axis_angle::__gungraun_wrapper_mod::quat_from_axis_angle,@function
gungraun::quat_from_axis_angle::__gungraun_wrapper_mod::quat_from_axis_angle:
		// benches/gungraun.rs:417
		#[bench::args(black_box(Vec3::X), bb_f32())]
	.cfi_startproc
	push r14
	.cfi_def_cfa_offset 16
	push rbx
	.cfi_def_cfa_offset 24
	push rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov rbx, rsi
	mov r14, rdi
		// src/f32/sse2/quat.rs:151
		let (s, c) = math::sin_cos(angle * 0.5);
	mulss xmm0, dword ptr [rip + .LCPI248_0]
	lea rdi, [rsp + 4]
	mov rsi, rsp
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	call qword ptr [rip + sincosf@GOTPCREL]
		// benches/gungraun.rs:419
		black_box(Quat::from_axis_angle(axis, angle))
	movsd xmm0, qword ptr [rbx]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movss xmm1, dword ptr [rsp]
	movss xmm2, dword ptr [rsp + 4]
	unpcklps xmm2, xmm1
	shufps xmm2, xmm2, 64
	movss xmm1, dword ptr [rbx + 8]
	shufps xmm1, xmmword ptr [rip + .LCPI248_1], 48
	shufps xmm0, xmm1, 132
	mulps xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [r14], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:420
		}
	add rsp, 8
	.cfi_def_cfa_offset 24
	pop rbx
	.cfi_def_cfa_offset 16
	pop r14
	.cfi_def_cfa_offset 8
	ret
