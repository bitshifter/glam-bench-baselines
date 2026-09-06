.section .text.gungraun::quat_from_axis_angle::__gungraun_wrapper_mod::quat_from_axis_angle,"ax",@progbits
	.p2align	2
.type	gungraun::quat_from_axis_angle::__gungraun_wrapper_mod::quat_from_axis_angle,@function
gungraun::quat_from_axis_angle::__gungraun_wrapper_mod::quat_from_axis_angle:
		// benches/gungraun.rs:417
		#[bench::args(black_box(Vec3::X), bb_f32())]
	.cfi_startproc
	sub sp, sp, #64
	.cfi_def_cfa_offset 64
	stp x29, x30, [sp, #16]
	stp x22, x21, [sp, #32]
	stp x20, x19, [sp, #48]
	add x29, sp, #16
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	fmov s1, #0.50000000
	mov x19, x1
	mov x20, x0
		// benches/gungraun.rs:419
		black_box(Quat::from_axis_angle(axis, angle))
	add x21, x1, #8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	sub x0, x29, #4
	add x1, sp, #8
	add x22, sp, #8
		// src/f32/neon/quat.rs:148
		let (s, c) = math::sin_cos(angle * 0.5);
	fmul s0, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	bl sincosf
	ldur s0, [x29, #-4]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmov v2.2s, #1.00000000
		// benches/gungraun.rs:419
		black_box(Quat::from_axis_angle(axis, angle))
	ldr d3, [x19]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v1.16b, v0.16b
	ld1 { v2.s }[0], [x21]
	ld1 { v1.s }[1], [x22]
	mov v3.d[1], v2.d[0]
	zip1 v1.4s, v1.4s, v1.4s
	mov v1.s[2], v0.s[0]
	fmul v0.4s, v1.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x20]
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 64
		// benches/gungraun.rs:420
		}
	ldp x20, x19, [sp, #48]
	ldp x22, x21, [sp, #32]
	ldp x29, x30, [sp, #16]
	add sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w30
	.cfi_restore w29
	ret
