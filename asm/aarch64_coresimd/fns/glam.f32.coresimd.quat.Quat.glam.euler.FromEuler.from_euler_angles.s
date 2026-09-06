.section .text.<glam::f32::coresimd::quat::Quat as glam::euler::FromEuler>::from_euler_angles,"ax",@progbits
	.globl	<glam::f32::coresimd::quat::Quat as glam::euler::FromEuler>::from_euler_angles
	.p2align	2
.type	<glam::f32::coresimd::quat::Quat as glam::euler::FromEuler>::from_euler_angles,@function
<glam::f32::coresimd::quat::Quat as glam::euler::FromEuler>::from_euler_angles:
		// src/euler.rs:295
		fn from_euler_angles(
	.cfi_startproc
	sub sp, sp, #144
	.cfi_def_cfa_offset 144
	stp d13, d12, [sp, #32]
	stp d11, d10, [sp, #48]
	stp d9, d8, [sp, #64]
	stp x29, x30, [sp, #80]
	str x23, [sp, #96]
	stp x22, x21, [sp, #112]
	stp x20, x19, [sp, #128]
	add x29, sp, #80
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	.cfi_offset b12, -104
	.cfi_offset b13, -112
		// src/euler.rs:154
		match euler {
	and x10, x0, #0xff
	adrp x11, .LJTI97_0
	add x11, x11, :lo12:.LJTI97_0
	mov w9, #1
	adr x12, .LBB97_1
	ldrb w13, [x11, x10]
	add x12, x12, x13, lsl #2
	mov x19, x8
	movk w9, #513, lsl #16
	mov w20, #33619968
	mov x8, #-2
	br x12
.LBB97_1:
	mov w20, #16842752
	b .LBB97_25
	mov w20, #33554432
		// src/euler.rs:177
		EulerRot::XYZEx => Self::new(Axis::Z, Parity::Odd, Repeated::No, Frame::Relative),
	b .LBB97_26
	mov w8, #1
	movk w8, #257, lsl #16
	add w9, w8, #4080, lsl #12
	mov x8, #-2
		// src/euler.rs:176
		EulerRot::ZXZEx => Self::new(Axis::Z, Parity::Even, Repeated::Yes, Frame::Relative),
	b .LBB97_22
	mov w8, #65537
		// src/euler.rs:145
		Self {
	add w20, w8, #255
	b .LBB97_25
	mov w9, #65537
	b .LBB97_21
	mov w8, #1
	mov w9, #1
		// src/euler.rs:167
		EulerRot::ZYXEx => Self::new(Axis::X, Parity::Even, Repeated::No, Frame::Relative),
	b .LBB97_22
	mov w8, #1
	movk w8, #257, lsl #16
	orr w9, w8, #0x100
	b .LBB97_21
	mov w20, wzr
	b .LBB97_25
	mov w9, #1
	movk w9, #257, lsl #16
	b .LBB97_21
	add w9, w9, #256
		// src/euler.rs:164
		EulerRot::ZXZ => Self::new(Axis::Z, Parity::Even, Repeated::Yes, Frame::Static),
	b .LBB97_22
	mov w8, #65537
	add w9, w8, #4080, lsl #12
	b .LBB97_21
	mov w20, #16777472
	b .LBB97_25
	mov w20, #65536
	b .LBB97_25
	mov w8, #16777472
	orr w9, w8, #0x1
	b .LBB97_21
	mov w20, #16777216
	b .LBB97_25
		// src/euler.rs:145
		Self {
	add w20, w9, #255
		// src/euler.rs:166
		EulerRot::ZYZ => Self::new(Axis::Z, Parity::Odd, Repeated::Yes, Frame::Static),
	b .LBB97_26
	mov w20, #256
	movk w20, #512, lsl #16
		// src/euler.rs:178
		EulerRot::ZYZEx => Self::new(Axis::Z, Parity::Odd, Repeated::Yes, Frame::Relative),
	b .LBB97_26
	mov w8, #65537
	orr w9, w8, #0x100
	b .LBB97_21
	mov w8, #1
	movk w8, #257, lsl #16
		// src/euler.rs:145
		Self {
	add w20, w8, #255
	b .LBB97_25
	mov w9, #257
.LBB97_21:
	mov w8, #1
.LBB97_22:
		// src/euler.rs:303
		let order = Order::from_euler(euler);
	lsr w21, w9, #24
		// src/euler.rs:187
		if i > 0 {
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
	add x23, x8, x21
		// src/euler.rs:187
		if i > 0 {
	csel x22, x11, x10, eq
		// src/euler.rs:306
		let mut angles = if order.frame_static {
	tst w9, #0x10000
	b .LBB97_27
	mov w8, #256
	movk w8, #512, lsl #16
	orr w9, w8, #0x1
	mov x8, #-2
		// src/euler.rs:176
		EulerRot::ZXZEx => Self::new(Axis::Z, Parity::Even, Repeated::Yes, Frame::Relative),
	b .LBB97_22
	mov w20, #256
.LBB97_25:
	mov w8, #1
.LBB97_26:
		// src/euler.rs:303
		let order = Order::from_euler(euler);
	lsr w21, w20, #24
		// src/euler.rs:187
		if i > 0 {
	mov w10, #2
	fmov s10, #1.00000000
	sub x9, x21, #1
	cmp w21, #0
		// src/euler.rs:183
		(i + 1) % 3
	add x22, x8, x21
		// src/euler.rs:187
		if i > 0 {
	csel x23, x10, x9, eq
		// src/euler.rs:306
		let mut angles = if order.frame_static {
	tst w20, #0x10000
.LBB97_27:
	fcsel s3, s2, s0, eq
	fcsel s2, s0, s2, eq
	fmov s4, #0.50000000
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sin(self)
	add x0, x29, #28
	add x1, x29, #24
	str wzr, [sp, #24]
	str xzr, [sp, #16]
		// src/euler.rs:316
		let ti = angles.x * 0.5;
	fmul s0, s3, s4
		// src/euler.rs:317
		let tj = angles.y * 0.5;
	fmul s8, s1, s4
		// src/euler.rs:318
		let th = angles.z * 0.5;
	fmul s9, s2, s4
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sin(self)
	bl sincosf
	fmov s0, s8
	ldp s13, s12, [x29, #24]
	add x0, sp, #12
	add x1, sp, #8
	bl sincosf
	fmov s0, s9
	ldp s11, s8, [sp, #8]
	add x0, sp, #4
	mov x1, sp
	bl sincosf
	ldp s3, s1, [sp]
		// src/euler.rs:322
		let cc = ci * ch;
	fmul s0, s3, s13
		// src/euler.rs:323
		let cs = ci * sh;
	fmul s2, s1, s13
		// src/euler.rs:324
		let sc = si * ch;
	fmul s3, s3, s12
		// src/euler.rs:325
		let ss = si * sh;
	fmul s1, s1, s12
		// src/euler.rs:331
		if order.initial_repeated {
	tbnz w20, #8, .LBB97_29
		// src/euler.rs:337
		a[i] = cj * sc - sj * cs;
	fmul s4, s2, s8
	fmul s5, s3, s11
		// src/euler.rs:338
		a[j] = (cj * ss + sj * cc) * parity;
	fmul s6, s1, s11
	fmul s7, s0, s8
		// src/euler.rs:339
		a[k] = cj * cs - sj * sc;
	fmul s16, s3, s8
	fmul s2, s2, s11
		// src/euler.rs:340
		a[3] = cj * cc + sj * ss;
	fmul s17, s0, s11
	fmul s18, s1, s8
		// src/euler.rs:337
		a[i] = cj * sc - sj * cs;
	fsub s0, s5, s4
		// src/euler.rs:338
		a[j] = (cj * ss + sj * cc) * parity;
	fadd s3, s6, s7
		// src/euler.rs:339
		a[k] = cj * cs - sj * sc;
	fsub s1, s2, s16
		// src/euler.rs:340
		a[3] = cj * cc + sj * ss;
	fadd s2, s17, s18
	b .LBB97_30
.LBB97_29:
		// src/euler.rs:332
		a[i] = cj * (cs + sc);
	fadd s4, s2, s3
		// src/euler.rs:333
		a[j] = sj * (cc + ss) * parity;
	fadd s5, s0, s1
		// src/euler.rs:334
		a[k] = sj * (cs - sc);
	fsub s2, s2, s3
		// src/euler.rs:335
		a[3] = cj * (cc - ss);
	fsub s6, s0, s1
		// src/euler.rs:332
		a[i] = cj * (cs + sc);
	fmul s0, s4, s11
		// src/euler.rs:333
		a[j] = sj * (cc + ss) * parity;
	fmul s3, s5, s8
		// src/euler.rs:334
		a[k] = sj * (cs - sc);
	fmul s1, s2, s8
		// src/euler.rs:335
		a[3] = cj * (cc - ss);
	fmul s2, s6, s11
.LBB97_30:
	fmul s3, s10, s3
	add x8, sp, #16
	str s0, [x8, x21, lsl #2]
	str s3, [x8, x23, lsl #2]
	str s1, [x8, x22, lsl #2]
	str s2, [sp, #28]
		// src/f32/coresimd/quat.rs:81
		Self(f32x4::from_array(a))
	ldr q0, [sp, #16]
	str q0, [x19]
	.cfi_def_cfa wsp, 144
		// src/euler.rs:344
		}
	ldp x20, x19, [sp, #128]
	ldr x23, [sp, #96]
	ldp x22, x21, [sp, #112]
	ldp x29, x30, [sp, #80]
	ldp d9, d8, [sp, #64]
	ldp d11, d10, [sp, #48]
	ldp d13, d12, [sp, #32]
	add sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	.cfi_restore b12
	.cfi_restore b13
	ret
