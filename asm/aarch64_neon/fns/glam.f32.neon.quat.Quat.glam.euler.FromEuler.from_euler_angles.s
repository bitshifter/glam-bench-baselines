.section .text.<glam::f32::neon::quat::Quat as glam::euler::FromEuler>::from_euler_angles,"ax",@progbits
	.globl	<glam::f32::neon::quat::Quat as glam::euler::FromEuler>::from_euler_angles
	.p2align	2
.type	<glam::f32::neon::quat::Quat as glam::euler::FromEuler>::from_euler_angles,@function
<glam::f32::neon::quat::Quat as glam::euler::FromEuler>::from_euler_angles:
		// src/euler.rs:295
		fn from_euler_angles(
	.cfi_startproc
	sub sp, sp, #192
	.cfi_def_cfa_offset 192
	str d10, [sp, #96]
	stp d9, d8, [sp, #104]
	stp x29, x30, [sp, #120]
	str x25, [sp, #136]
	stp x24, x23, [sp, #144]
	stp x22, x21, [sp, #160]
	stp x20, x19, [sp, #176]
	add x29, sp, #120
	.cfi_def_cfa w29, 72
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w30, -64
	.cfi_offset w29, -72
	.cfi_offset b8, -80
	.cfi_offset b9, -88
	.cfi_offset b10, -96
		// src/euler.rs:154
		match euler {
	and x10, x0, #0xff
	adrp x11, .LJTI98_0
	add x11, x11, :lo12:.LJTI98_0
	mov w9, #1
	adr x12, .LBB98_1
	ldrb w13, [x11, x10]
	add x12, x12, x13, lsl #2
	mov x19, x8
	movk w9, #513, lsl #16
	mov w20, #33619968
	mov x8, #-2
	br x12
.LBB98_1:
	mov w20, #16842752
	b .LBB98_25
	mov w20, #33554432
		// src/euler.rs:177
		EulerRot::XYZEx => Self::new(Axis::Z, Parity::Odd, Repeated::No, Frame::Relative),
	b .LBB98_26
	mov w8, #1
	movk w8, #257, lsl #16
	add w9, w8, #4080, lsl #12
	mov x8, #-2
		// src/euler.rs:176
		EulerRot::ZXZEx => Self::new(Axis::Z, Parity::Even, Repeated::Yes, Frame::Relative),
	b .LBB98_22
	mov w8, #65537
		// src/euler.rs:145
		Self {
	add w20, w8, #255
	b .LBB98_25
	mov w9, #65537
	b .LBB98_21
	mov w8, #1
	mov w9, #1
		// src/euler.rs:167
		EulerRot::ZYXEx => Self::new(Axis::X, Parity::Even, Repeated::No, Frame::Relative),
	b .LBB98_22
	mov w8, #1
	movk w8, #257, lsl #16
	orr w9, w8, #0x100
	b .LBB98_21
	mov w20, wzr
	b .LBB98_25
	mov w9, #1
	movk w9, #257, lsl #16
	b .LBB98_21
	add w9, w9, #256
		// src/euler.rs:164
		EulerRot::ZXZ => Self::new(Axis::Z, Parity::Even, Repeated::Yes, Frame::Static),
	b .LBB98_22
	mov w8, #65537
	add w9, w8, #4080, lsl #12
	b .LBB98_21
	mov w20, #16777472
	b .LBB98_25
	mov w20, #65536
	b .LBB98_25
	mov w8, #16777472
	orr w9, w8, #0x1
	b .LBB98_21
	mov w20, #16777216
	b .LBB98_25
		// src/euler.rs:145
		Self {
	add w20, w9, #255
		// src/euler.rs:166
		EulerRot::ZYZ => Self::new(Axis::Z, Parity::Odd, Repeated::Yes, Frame::Static),
	b .LBB98_26
	mov w20, #256
	movk w20, #512, lsl #16
		// src/euler.rs:178
		EulerRot::ZYZEx => Self::new(Axis::Z, Parity::Odd, Repeated::Yes, Frame::Relative),
	b .LBB98_26
	mov w8, #65537
	orr w9, w8, #0x100
	b .LBB98_21
	mov w8, #1
	movk w8, #257, lsl #16
		// src/euler.rs:145
		Self {
	add w20, w8, #255
	b .LBB98_25
	mov w9, #257
.LBB98_21:
	mov w8, #1
.LBB98_22:
		// src/euler.rs:303
		let order = Order::from_euler(euler);
	lsr w21, w9, #24
	mov w11, #2
		// src/euler.rs:312
		if order.parity_even {
	fneg s1, s1
	fmov s10, #-1.00000000
	mov w20, w9
	sub x10, x21, #1
		// src/euler.rs:187
		if i > 0 {
	cmp w21, #0
		// src/euler.rs:183
		(i + 1) % 3
	add x22, x8, x21
		// src/euler.rs:187
		if i > 0 {
	csel x23, x11, x10, eq
		// src/euler.rs:306
		let mut angles = if order.frame_static {
	tst w9, #0x10000
	b .LBB98_27
	mov w8, #256
	movk w8, #512, lsl #16
	orr w9, w8, #0x1
	mov x8, #-2
		// src/euler.rs:176
		EulerRot::ZXZEx => Self::new(Axis::Z, Parity::Even, Repeated::Yes, Frame::Relative),
	b .LBB98_22
	mov w20, #256
.LBB98_25:
	mov w8, #1
.LBB98_26:
		// src/euler.rs:303
		let order = Order::from_euler(euler);
	lsr w21, w20, #24
	mov w10, #2
	fmov s10, #1.00000000
		// src/euler.rs:187
		if i > 0 {
	sub x9, x21, #1
	cmp w21, #0
		// src/euler.rs:183
		(i + 1) % 3
	add x23, x8, x21
		// src/euler.rs:187
		if i > 0 {
	csel x22, x10, x9, eq
		// src/euler.rs:306
		let mut angles = if order.frame_static {
	tst w20, #0x10000
.LBB98_27:
	fcsel s3, s2, s0, eq
	fcsel s2, s0, s2, eq
	fmov s4, #0.50000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	sub x0, x29, #44
	sub x1, x29, #48
	stur wzr, [x29, #-32]
	sub x24, x29, #44
	stur xzr, [x29, #-40]
		// src/euler.rs:316
		let ti = angles.x * 0.5;
	fmul s0, s3, s4
		// src/euler.rs:317
		let tj = angles.y * 0.5;
	fmul s8, s1, s4
		// src/euler.rs:318
		let th = angles.z * 0.5;
	fmul s9, s2, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	bl sincosf
	ldur s0, [x29, #-48]
	sub x0, x29, #52
	sub x1, x29, #56
	str q0, [sp]
	fmov s0, s8
	bl sincosf
	ldur s0, [x29, #-52]
	add x0, sp, #60
	add x1, sp, #56
	add x25, sp, #56
	str q0, [sp, #32]
	ldur s0, [x29, #-56]
	str q0, [sp, #16]
	fmov s0, s9
	bl sincosf
	ldr s0, [sp, #60]
	ldr q3, [sp]
		// src/euler.rs:325
		let ss = si * sh;
	mov v1.16b, v0.16b
	ld1 { v1.s }[1], [x25]
	ld1 { v1.s }[3], [x24]
	ext v2.16b, v1.16b, v1.16b, #12
	ext v2.16b, v1.16b, v2.16b, #12
	mov v1.s[2], v0.s[0]
	mov v2.s[1], v3.s[0]
	mov v2.s[2], v3.s[0]
	fmul v0.4s, v1.4s, v2.4s
	rev64 v1.4s, v0.4s
		// src/euler.rs:331
		if order.initial_repeated {
	tbnz w20, #8, .LBB98_29
	ldp q2, q3, [sp, #16]
		// src/euler.rs:338
		a[j] = (cj * ss + sj * cc) * parity;
	fmul v1.4s, v1.4s, v3.s[0]
	fmul v2.4s, v0.4s, v2.s[0]
	fadd v0.4s, v2.4s, v1.4s
	fsub v1.4s, v2.4s, v1.4s
	mov v0.d[1], v1.d[1]
	b .LBB98_30
.LBB98_29:
		// src/euler.rs:333
		a[j] = sj * (cc + ss) * parity;
	fadd v2.4s, v0.4s, v1.4s
	fsub v0.4s, v0.4s, v1.4s
	ldp q3, q1, [sp, #16]
	mov v0.s[0], v2.s[0]
		// src/euler.rs:335
		a[3] = cj * (cc - ss);
	mov v1.s[1], v3.s[0]
		// src/euler.rs:333
		a[j] = sj * (cc + ss) * parity;
	mov v0.s[3], v2.s[3]
		// src/euler.rs:335
		a[3] = cj * (cc - ss);
	dup v1.2d, v1.d[0]
		// src/euler.rs:333
		a[j] = sj * (cc + ss) * parity;
	fmul v0.4s, v0.4s, v1.4s
.LBB98_30:
	sub x8, x29, #40
	fmul s1, s10, s0
	add x9, x8, x21, lsl #2
	add x10, x8, x23, lsl #2
	st1 { v0.s }[3], [x9]
	str s1, [x8, x22, lsl #2]
	orr x8, x8, #0xc
	st1 { v0.s }[2], [x10]
	st1 { v0.s }[1], [x8]
		// src/f32/neon/quat.rs:94
		Self::from_xyzw(a[0], a[1], a[2], a[3])
	ldur q0, [x29, #-40]
		// src/f32/neon/quat.rs:82
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	str q0, [x19]
	.cfi_def_cfa wsp, 192
		// src/euler.rs:344
		}
	ldp x20, x19, [sp, #176]
	ldr x25, [sp, #136]
	ldp x22, x21, [sp, #160]
	ldr d10, [sp, #96]
	ldp x24, x23, [sp, #144]
	ldp x29, x30, [sp, #120]
	ldp d9, d8, [sp, #104]
	add sp, sp, #192
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	ret
