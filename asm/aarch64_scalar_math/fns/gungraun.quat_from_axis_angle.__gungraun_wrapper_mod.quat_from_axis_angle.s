.section .text.gungraun::quat_from_axis_angle::__gungraun_wrapper_mod::quat_from_axis_angle,"ax",@progbits
	.p2align	2
.type	gungraun::quat_from_axis_angle::__gungraun_wrapper_mod::quat_from_axis_angle,@function
gungraun::quat_from_axis_angle::__gungraun_wrapper_mod::quat_from_axis_angle:
		// benches/gungraun.rs:417
		#[bench::args(black_box(Vec3::X), bb_f32())]
	.cfi_startproc
	str d8, [sp, #-48]!
	.cfi_def_cfa_offset 48
	stp x29, x30, [sp, #16]
	stp x20, x19, [sp, #32]
	add x29, sp, #16
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	.cfi_offset b8, -48
	fmov s1, #0.50000000
	mov x20, x0
	mov x19, x1
		// benches/gungraun.rs:419
		black_box(Quat::from_axis_angle(axis, angle))
	ldr s8, [x1, #8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	sub x0, x29, #4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	add x1, x20, #12
		// src/f32/scalar/quat.rs:146
		let (s, c) = math::sin_cos(angle * 0.5);
	fmul s0, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	bl sincosf
	ldur s0, [x29, #-4]
		// benches/gungraun.rs:419
		black_box(Quat::from_axis_angle(axis, angle))
	ldr d1, [x19]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.2s, v1.2s, v0.s[0]
	fmul s0, s0, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d1, [x20]
	str s0, [x20, #8]
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 48
		// benches/gungraun.rs:420
		}
	ldp x20, x19, [sp, #32]
	ldp x29, x30, [sp, #16]
	ldr d8, [sp], #48
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	ret
