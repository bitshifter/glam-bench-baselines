.section .text.gungraun::affine2_from_scale_angle_translation::__gungraun_wrapper_mod::affine2_from_scale_angle_translation,"ax",@progbits
	.p2align	4
.type	gungraun::affine2_from_scale_angle_translation::__gungraun_wrapper_mod::affine2_from_scale_angle_translation,@function
gungraun::affine2_from_scale_angle_translation::__gungraun_wrapper_mod::affine2_from_scale_angle_translation:
		// benches/gungraun.rs:579
		#[bench::args(vec2(), bb_f32(), vec2())]
	.cfi_startproc
	push rbx
	.cfi_def_cfa_offset 16
	sub rsp, 48
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -16
	movss dword ptr [rsp + 4], xmm4
	movss dword ptr [rsp], xmm3
	movaps xmmword ptr [rsp + 32], xmm1
	movaps xmmword ptr [rsp + 16], xmm0
	mov rbx, rdi
	lea rdi, [rsp + 12]
	lea rsi, [rsp + 8]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	movaps xmm0, xmm2
	call qword ptr [rip + sincosf@GOTPCREL]
		// src/f32/scalar/mat2.rs:119
		Self::new(cos, sin, -sin, cos)
	movss xmm0, dword ptr [rsp + 12]
	movaps xmm1, xmmword ptr [rip + .LCPI282_0]
	xorps xmm1, xmm0
	movaps xmm3, xmmword ptr [rsp + 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm3, xmmword ptr [rsp + 32], 0
	movss xmm2, dword ptr [rsp + 8]
	unpcklps xmm2, xmm0
	movlhps xmm2, xmm1
	shufps xmm2, xmm2, 36
	mulps xmm2, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rbx], xmm2
	movss xmm0, dword ptr [rsp]
	movss dword ptr [rbx + 16], xmm0
	movss xmm0, dword ptr [rsp + 4]
	movss dword ptr [rbx + 20], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:582
		}
	add rsp, 48
	.cfi_def_cfa_offset 16
	pop rbx
	.cfi_def_cfa_offset 8
	ret
