.section .text.gungraun::affine2_from_scale_angle_translation::__gungraun_wrapper_mod::affine2_from_scale_angle_translation,"ax",@progbits
	.p2align	2
.type	gungraun::affine2_from_scale_angle_translation::__gungraun_wrapper_mod::affine2_from_scale_angle_translation,@function
gungraun::affine2_from_scale_angle_translation::__gungraun_wrapper_mod::affine2_from_scale_angle_translation:
		// benches/gungraun.rs:579
		#[bench::args(vec2(), bb_f32(), vec2())]
	.cfi_startproc
	sub sp, sp, #80
	.cfi_def_cfa_offset 80
	stp d9, d8, [sp, #32]
	stp x29, x30, [sp, #48]
	str x19, [sp, #64]
	add x29, sp, #48
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	stp q0, q1, [sp]
	mov x19, x0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	add x0, x29, #28
	fmov s0, s2
	add x1, x29, #24
	fmov s8, s4
	fmov s9, s3
	bl sincosf
	ldp s0, s1, [x29, #24]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s9, s8, [x19, #16]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v2.16b, v0.16b
		// src/f32/scalar/mat2.rs:119
		Self::new(cos, sin, -sin, cos)
	fneg s3, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v2.s[1], v1.s[0]
	ldp q1, q4, [sp]
	mov v1.s[1], v4.s[0]
	mov v2.s[2], v3.s[0]
	zip1 v1.4s, v1.4s, v1.4s
	mov v2.s[3], v0.s[0]
	fmul v0.4s, v1.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x19]
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 80
		// benches/gungraun.rs:582
		}
	ldp x29, x30, [sp, #48]
	ldr x19, [sp, #64]
	ldp d9, d8, [sp, #32]
	add sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	.cfi_restore b9
	ret
