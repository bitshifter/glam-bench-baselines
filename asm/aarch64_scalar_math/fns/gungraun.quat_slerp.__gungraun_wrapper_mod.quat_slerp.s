.section .text.gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp,"ax",@progbits
	.p2align	2
.type	gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp,@function
gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp:
		// benches/gungraun.rs:460
		#[bench::orthogonal(quat(), quat_rot_x_180(), bb_f32())]
	.cfi_startproc
	sub sp, sp, #112
	.cfi_def_cfa_offset 112
	stp d9, d8, [sp, #64]
	stp x29, x30, [sp, #80]
	str x19, [sp, #96]
	add x29, sp, #80
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
		// src/f32/scalar/quat.rs:762
		let mut dot = self.dot(end);
	ldr q6, [x1]
	ldr q2, [x2]
	fmov s7, s0
	mov w8, #65534
	mov x19, x0
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	fmul v0.4s, v6.4s, v2.4s
		// src/f32/scalar/quat.rs:763
		if dot < 0.0 {
	fneg v5.4s, v2.4s
	movk w8, #16255, lsl #16
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	dup v1.2s, v0.s[1]
	ext v3.16b, v0.16b, v0.16b, #8
	fadd v1.2s, v0.2s, v1.2s
	dup v0.2s, v0.s[3]
	fadd v1.2s, v1.2s, v3.2s
	fadd v0.2s, v1.2s, v0.2s
	movi d1, #0000000000000000
		// src/f32/scalar/quat.rs:763
		if dot < 0.0 {
	fcmgt v3.4s, v1.4s, v0.4s
	fneg s4, s0
	fcmp s0, #0.0
	dup v3.4s, v3.s[0]
	fcsel s0, s4, s0, mi
	fmov s4, w8
	bit v2.16b, v5.16b, v3.16b
		// src/f32/scalar/quat.rs:769
		if dot > DOT_THRESHOLD {
	fcmp s0, s4
	b.le .LBB148_2
	fmov s0, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.4s, v2.4s, v7.s[0]
		// src/f32/scalar/quat.rs:705
		(self * (1.0 - s) + end * s).normalize()
	fsub s1, s0, s7
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.4s, v6.4s, v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v1.4s, v1.4s, v2.4s
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	fmul v2.4s, v1.4s, v1.4s
	dup v3.2s, v2.s[1]
	ext v4.16b, v2.16b, v2.16b, #8
	fadd v3.2s, v3.2s, v2.2s
	dup v2.2s, v2.s[3]
	fadd v3.2s, v4.2s, v3.2s
	fadd v2.2s, v2.2s, v3.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s2, s2
		// src/f32/scalar/vec4.rs:630
		1.0 / self.length()
	fdiv s0, s0, s2
	b .LBB148_3
.LBB148_2:
	mov w8, #31276
	stur q2, [x29, #-32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	fabs s2, s0
	movk w8, #47781, lsl #16
	fmov s9, #1.00000000
	stp q7, q6, [sp, #16]
	fmov s3, w8
	mov w8, #37061
	movk w8, #15322, lsl #16
	fmov s4, w8
	mov w8, #64614
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s3, s2, s3
	movk w8, #48267, lsl #16
	fadd s3, s3, s4
	fmov s4, w8
	mov w8, #4344
	movk w8, #15613, lsl #16
	fmul s3, s2, s3
	fadd s3, s3, s4
	fmov s4, w8
	mov w8, #33682
	movk w8, #48461, lsl #16
	fmov s5, w8
	mov w8, #15006
	movk w8, #15798, lsl #16
	fmul s3, s2, s3
	fadd s3, s3, s4
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	fsub s4, s9, s2
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s3, s2, s3
		// src/f32/math.rs:9
		if omx < 0.0 {
	fcmp s4, #0.0
	fcsel s1, s1, s4, mi
	fmov s4, w8
	mov w8, #49098
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fadd s3, s3, s5
	movk w8, #48731, lsl #16
		// src/f32/math.rs:28
		if nonnegative {
	fcmp s0, #0.0
		// src/f32/scalar/quat.rs:734
		let scale1 = math::sin(theta * (1.0 - s));
	fsub s0, s9, s7
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s1, s1
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s3, s2, s3
	fadd s3, s3, s4
	fmov s4, w8
	mov w8, #4058
	movk w8, #16329, lsl #16
	fmul s3, s2, s3
	fadd s3, s3, s4
	fmul s2, s2, s3
	fmov s3, w8
	mov w8, #4059
	movk w8, #16457, lsl #16
	fadd s2, s2, s3
		// src/f32/math.rs:25
		result *= root;
	fmul s1, s1, s2
	fmov s2, w8
		// src/f32/math.rs:28
		if nonnegative {
	fsub s2, s2, s1
	fcsel s8, s2, s1, lt
		// src/f32/scalar/quat.rs:734
		let scale1 = math::sin(theta * (1.0 - s));
	fmul s0, s0, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	bl sinf
	ldr q1, [sp, #16]
	str q0, [sp, #16]
		// src/f32/scalar/quat.rs:735
		let scale2 = math::sin(theta * s);
	fmul s1, s1, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	fmov s0, s1
	bl sinf
	str q0, [sp]
	fmov s0, s8
	bl sinf
	ldp q2, q1, [sp, #16]
		// src/f32/scalar/quat.rs:737
		((self * scale1) + (end * scale2)) * (1.0 / theta_sin)
	fdiv s0, s9, s0
	ldr q3, [sp]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.4s, v1.4s, v2.s[0]
	ldur q2, [x29, #-32]
	fmul v2.4s, v2.4s, v3.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v1.4s, v1.4s, v2.4s
.LBB148_3:
	fmul v0.4s, v1.4s, v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x19]
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 112
		// benches/gungraun.rs:465
		}
	ldp x29, x30, [sp, #80]
	ldr x19, [sp, #96]
	ldp d9, d8, [sp, #64]
	add sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	.cfi_restore b9
	ret
