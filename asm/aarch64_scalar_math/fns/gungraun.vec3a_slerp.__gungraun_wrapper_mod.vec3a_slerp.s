.section .text.gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp,@function
gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp:
		// benches/gungraun.rs:511
		#[bench::general(black_box(Vec3A::X), black_box(Vec3A::Y), bb_f32())]
	.cfi_startproc
	sub sp, sp, #160
	.cfi_def_cfa_offset 160
	str d10, [sp, #96]
	stp d9, d8, [sp, #112]
	stp x29, x30, [sp, #128]
	stp x20, x19, [sp, #144]
	add x29, sp, #128
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	.cfi_offset b10, -64
		// src/f32/scalar/vec3a.rs:1314
		let self_length = self.length();
	ldr d5, [x1]
		// src/f32/scalar/vec3a.rs:1315
		let rhs_length = rhs.length();
	ldr d17, [x2]
	fmov s6, s0
		// src/f32/scalar/vec3a.rs:1314
		let self_length = self.length();
	ldur d16, [x1, #4]
		// src/f32/scalar/vec3a.rs:1315
		let rhs_length = rhs.length();
	ldr s1, [x2, #8]
	mov w8, #65531
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	zip1 v0.2s, v17.2s, v5.2s
	zip2 v2.2s, v17.2s, v5.2s
	movk w8, #16255, lsl #16
	mov v18.16b, v16.16b
	mov x19, x0
	fmul v0.2s, v0.2s, v0.2s
	fmul v2.2s, v2.2s, v2.2s
	mov v18.s[0], v1.s[0]
	fadd v0.2s, v0.2s, v2.2s
	fmul v2.2s, v18.2s, v18.2s
	fadd v0.2s, v0.2s, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt v7.2s, v0.2s
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v0.2s, v5.2s, v17.2s
	dup v3.2s, v0.s[1]
	fadd v0.2s, v0.2s, v3.2s
	fmov s3, w8
	dup v2.2s, v7.s[0]
	zip2 v4.2s, v16.2s, v7.2s
	mov v2.s[0], v1.s[0]
	fmul v2.2s, v4.2s, v2.2s
	fadd v0.2s, v0.2s, v2.2s
		// src/f32/scalar/vec3a.rs:1317
		let dot = self.dot(rhs) / (self_length * rhs_length);
	dup v2.2s, v2.s[1]
	fdiv v0.2s, v0.2s, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	fabs s2, s0
		// src/f32/scalar/vec3a.rs:1319
		if math::abs(dot) < 1.0 - 3e-7 {
	fcmp s2, s3
	b.pl .LBB158_2
	mov w8, #31276
	fmov s10, #1.00000000
	str q5, [sp, #48]
	movk w8, #47781, lsl #16
	movi d4, #0000000000000000
	stur q6, [x29, #-48]
	fmov s1, w8
	mov w8, #37061
	str q7, [sp, #64]
	movk w8, #15322, lsl #16
	stp q17, q18, [sp, #16]
	fmov s3, w8
	mov w8, #64614
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s1, s2, s1
	movk w8, #48267, lsl #16
	fadd s1, s1, s3
	fmov s3, w8
	mov w8, #4344
	movk w8, #15613, lsl #16
	fmul s1, s2, s1
	fadd s1, s1, s3
	fmov s3, w8
	mov w8, #33682
	movk w8, #48461, lsl #16
	fmov s5, w8
	mov w8, #15006
	movk w8, #15798, lsl #16
	fmul s1, s2, s1
	fadd s1, s1, s3
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	fsub s3, s10, s2
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s1, s2, s1
		// src/f32/math.rs:9
		if omx < 0.0 {
	fcmp s3, #0.0
	fcsel s3, s4, s3, mi
	fmov s4, w8
	mov w8, #49098
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fadd s1, s1, s5
	movk w8, #48731, lsl #16
		// src/f32/math.rs:28
		if nonnegative {
	fcmp s0, #0.0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s3, s3
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s1, s2, s1
	fadd s1, s1, s4
	fmov s4, w8
	mov w8, #4058
	movk w8, #16329, lsl #16
	fmul s1, s2, s1
	fadd s1, s1, s4
	fmul s1, s2, s1
	fmov s2, w8
	mov w8, #4059
	movk w8, #16457, lsl #16
	fadd s1, s1, s2
	fmov s2, w8
		// src/f32/math.rs:25
		result *= root;
	fmul s1, s3, s1
		// src/f32/math.rs:28
		if nonnegative {
	fsub s2, s2, s1
	fcsel s8, s2, s1, lt
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	fmov s0, s8
	bl sinf
	ldur q1, [x29, #-48]
	fmov s9, s0
		// src/f32/scalar/vec3a.rs:1324
		let t1 = math::sin(theta * (1.0 - s));
	fsub s1, s10, s1
	fmul s1, s1, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	fmov s0, s1
	bl sinf
	ldur q1, [x29, #-48]
	str q0, [sp]
		// src/f32/scalar/vec3a.rs:1325
		let t2 = math::sin(theta * s);
	fmul s1, s1, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	fmov s0, s1
	bl sinf
	ldr q3, [sp, #64]
	ldur q4, [x29, #-48]
		// src/f32/float.rs:8
		self + (rhs - self) * t
	mov s1, v3.s[1]
	fsub s2, s3, s1
	fmul s2, s4, s2
	ldp q5, q4, [sp, #32]
	fadd s1, s1, s2
		// src/f32/scalar/vec3a.rs:1331
		+ rhs * (result_length / rhs_length) * t2)
	dup v1.2s, v1.s[0]
	fdiv v1.2s, v1.2s, v3.2s
	ldr q3, [sp, #16]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	ext v2.8b, v3.8b, v4.8b, #4
	mov v3.s[1], v4.s[1]
	ldr q4, [sp]
	mov v0.s[1], v4.s[0]
		// src/f32/scalar/vec3a.rs:1332
		* (1.0 / sin_theta);
	fdiv s4, s10, s9
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.2s, v2.2s, v1.2s
	fmul v3.2s, v3.2s, v1.2s
	fmul v1.2s, v5.2s, v1.2s
	fmul v2.2s, v2.2s, v0.2s
	fmul v3.2s, v3.2s, v0.2s
	fmul v0.2s, v1.2s, v0.2s
	rev64 v2.2s, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v1.2s, v3.2s, v2.2s
	faddp s2, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.2s, v1.2s, v4.s[0]
	fmul s1, s4, s2
		// src/f32/scalar/vec3a.rs:1347
		}
	b .LBB158_5
.LBB158_2:
		// src/f32/scalar/vec3a.rs:1334
		if dot < 0.0 {
	fcmp s0, #0.0
	b.pl .LBB158_4
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mov s8, v5.s[1]
	mov w8, #4059
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	fabs s0, s5
	movk w8, #16457, lsl #16
	fmov s3, #0.50000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	sub x0, x29, #20
	fmov s1, w8
	sub x1, x29, #24
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mov s9, v16.s[1]
	stur q6, [x29, #-48]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	fabs s2, s8
	str q7, [sp, #64]
		// src/f32/scalar/vec3a.rs:1339
		let rotation = Quat::from_axis_angle(axis, core::f32::consts::PI * s);
	fmul s1, s6, s1
	str q16, [sp, #16]
		// src/f32/scalar/vec3a.rs:1261
		if math::abs(self.x) > math::abs(self.y) {
	fcmp s0, s2
	fneg s0, s8
	cset w20, gt
	stp q0, q5, [sp, #32]
		// src/f32/scalar/quat.rs:146
		let (s, c) = math::sin_cos(angle * 0.5);
	fmul s0, s1, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	bl sincosf
		// src/f32/scalar/vec3a.rs:1261
		if math::abs(self.x) > math::abs(self.y) {
	dup v0.2s, w20
	movi d1, #0000000000000000
	ldr q19, [sp, #16]
	ldp q6, q17, [sp, #48]
	fneg v2.2s, v19.2s
	mov v4.16b, v6.16b
	mov v20.16b, v6.16b
	shl v3.2s, v0.2s, #31
	dup v0.2s, v19.s[1]
	zip1 v5.2s, v1.2s, v6.2s
	ldr q6, [sp, #32]
	mov v4.s[1], v2.s[1]
	mov v1.s[0], v6.s[0]
	cmlt v2.2s, v3.2s, #0
	mov v3.16b, v0.16b
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	zip1 v0.2s, v0.2s, v20.2s
		// src/f32/scalar/vec3a.rs:1261
		if math::abs(self.x) > math::abs(self.y) {
	mov v3.s[1], v6.s[0]
	bit v1.8b, v4.8b, v2.8b
	bsl v2.8b, v5.8b, v3.8b
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v3.2s, v1.2s, v1.2s
	fmul v4.2s, v2.2s, v2.2s
	dup v3.2s, v3.s[1]
	dup v5.2s, v4.s[1]
	fadd v3.2s, v3.2s, v4.2s
	fmov s4, #1.00000000
	fadd v3.2s, v5.2s, v3.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s3, s3
		// src/f32/scalar/vec3a.rs:597
		1.0 / self.length()
	fdiv s3, s4, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	ldur s4, [x29, #-20]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.2s, v1.2s, v3.s[0]
	fmul v2.2s, v2.2s, v3.s[0]
	fmul v1.2s, v1.2s, v4.s[0]
	fmul v2.2s, v2.2s, v4.s[0]
		// src/f32/scalar/vec3a.rs:1342
		rotation * self * (result_length / self_length)
	mov s4, v17.s[1]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mov s3, v1.s[1]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v5.2s, v2.2s, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov s6, v2.s[1]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s7, s20, v1.s[1]
	fmul s16, s2, v20.s[1]
		// src/f32/float.rs:8
		self + (rhs - self) * t
	fsub s17, s17, s4
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s18, s9, v2.s[1]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v0.2s, v0.2s, v2.2s
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s3, s3, v1.s[1]
	fmul s6, s6, v2.s[1]
	fadd s7, s7, s16
	ldur q16, [x29, #-48]
		// src/f32/float.rs:8
		self + (rhs - self) * t
	fmul s16, s16, s17
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s3, s3, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	ldur s5, [x29, #-24]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s7, s18, s7
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v18.2s, v19.2s, v1.2s
		// src/f32/scalar/quat.rs:820
		rhs.mul(w * w - b2)
	fmul s17, s5, s5
		// src/f32/scalar/quat.rs:822
		.add(b.cross(rhs).mul(w * 2.0))
	fadd s5, s5, s5
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s3, s6, s3
		// src/f32/float.rs:8
		self + (rhs - self) * t
	fadd s6, s4, s16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	ext v16.8b, v1.8b, v2.8b, #4
		// src/f32/scalar/quat.rs:821
		.add(b.mul(rhs.dot(b) * 2.0))
	fadd s7, s7, s7
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul s1, s8, v1.s[1]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub v0.2s, v0.2s, v18.2s
		// src/f32/scalar/quat.rs:820
		rhs.mul(w * w - b2)
	fsub s3, s17, s3
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul v17.2s, v20.2s, v2.2s
		// src/f32/scalar/vec3a.rs:1342
		rotation * self * (result_length / self_length)
	fdiv s4, s6, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v6.2s, v16.2s, v7.s[0]
	fmul s2, s7, v2.s[1]
	fmul v0.2s, v0.2s, v5.s[0]
	fmul v16.2s, v20.2s, v3.s[0]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fsub s1, s1, s17
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s3, s3, v19.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v6.2s, v16.2s, v6.2s
	fadd s2, s3, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s1, s5, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.2s, v0.2s, v6.2s
	fadd s1, s1, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.2s, v0.2s, v4.s[0]
	fmul s1, s4, s1
	b .LBB158_5
.LBB158_4:
	fmov s0, #1.00000000
	fmul s1, s6, s1
		// src/f32/scalar/vec3a.rs:986
		self * (1.0 - s) + rhs * s
	fsub s0, s0, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.2s, v5.2s, v0.s[0]
	fmul s3, s0, v16.s[1]
	fmul v0.2s, v17.2s, v6.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.2s, v2.2s, v0.2s
	fadd s1, s3, s1
.LBB158_5:
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d0, [x19]
	stp s1, s1, [x19, #8]
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 160
		// benches/gungraun.rs:516
		}
	ldp x20, x19, [sp, #144]
	ldr d10, [sp, #96]
	ldp x29, x30, [sp, #128]
	ldp d9, d8, [sp, #112]
	add sp, sp, #160
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	ret
