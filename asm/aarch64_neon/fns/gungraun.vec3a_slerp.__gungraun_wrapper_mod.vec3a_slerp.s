.section .text.gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp,@function
gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp:
		// benches/gungraun.rs:511
		#[bench::general(black_box(Vec3A::X), black_box(Vec3A::Y), bb_f32())]
	.cfi_startproc
	sub sp, sp, #144
	.cfi_def_cfa_offset 144
	stp d11, d10, [sp, #80]
	stp d9, d8, [sp, #96]
	stp x29, x30, [sp, #112]
	str x19, [sp, #128]
	add x29, sp, #112
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	.cfi_offset b10, -56
	.cfi_offset b11, -64
	mov v4.16b, v0.16b
	fmov s5, s2
	mov w8, #65531
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	ext v2.16b, v1.16b, v1.16b, #8
	movk w8, #16255, lsl #16
	mov x19, x0
	zip1 v0.2s, v4.2s, v1.2s
	zip2 v6.2s, v4.2s, v1.2s
	ext v3.16b, v4.16b, v4.16b, #8
	fmul v0.2s, v0.2s, v0.2s
	fmul v6.2s, v6.2s, v6.2s
	zip1 v2.2s, v3.2s, v2.2s
	fadd v0.2s, v0.2s, v6.2s
	fmul v2.2s, v2.2s, v2.2s
	fadd v0.2s, v2.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt v3.2s, v0.2s
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v0.4s, v4.4s, v1.4s
	faddp s2, v0.2s
	mov s0, v0.s[2]
	fadd s0, s0, s2
		// src/f32/neon/vec3a.rs:1323
		let dot = self.dot(rhs) / (self_length * rhs_length);
	fmul s2, s3, v3.s[1]
	mov s10, v3.s[1]
	fdiv s0, s0, s2
	fmov s2, w8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	fabs s6, s0
		// src/f32/neon/vec3a.rs:1325
		if math::abs(dot) < 1.0 - 3e-7 {
	fcmp s6, s2
	b.pl .LBB158_2
	mov w8, #31276
	stp q4, q3, [sp, #32]
	fmov s11, #1.00000000
	movk w8, #47781, lsl #16
	stur q5, [x29, #-48]
	movi d4, #0000000000000000
	fmov s2, w8
	mov w8, #37061
	str q1, [sp, #16]
	movk w8, #15322, lsl #16
	fmov s3, w8
	mov w8, #64614
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s2, s6, s2
	movk w8, #48267, lsl #16
	fadd s2, s2, s3
	fmov s3, w8
	mov w8, #4344
	movk w8, #15613, lsl #16
	fmul s2, s6, s2
	fadd s2, s2, s3
	fmov s3, w8
	mov w8, #33682
	movk w8, #48461, lsl #16
	fmov s5, w8
	mov w8, #15006
	movk w8, #15798, lsl #16
	fmul s2, s6, s2
	fadd s2, s2, s3
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	fsub s3, s11, s6
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s2, s6, s2
		// src/f32/math.rs:9
		if omx < 0.0 {
	fcmp s3, #0.0
	fcsel s3, s4, s3, mi
	fmov s4, w8
	mov w8, #49098
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fadd s2, s2, s5
	movk w8, #48731, lsl #16
		// src/f32/math.rs:28
		if nonnegative {
	fcmp s0, #0.0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s3, s3
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s2, s6, s2
	fadd s2, s2, s4
	fmov s4, w8
	mov w8, #4058
	movk w8, #16329, lsl #16
	fmul s2, s6, s2
	fadd s2, s2, s4
	fmul s4, s6, s2
	fmov s2, w8
	mov w8, #4059
	movk w8, #16457, lsl #16
	fadd s2, s4, s2
		// src/f32/math.rs:25
		result *= root;
	fmul s3, s3, s2
	fmov s2, w8
		// src/f32/math.rs:28
		if nonnegative {
	fsub s2, s2, s3
	fcsel s8, s2, s3, lt
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	fmov s0, s8
	bl sinf
	ldur q1, [x29, #-48]
	fmov s9, s0
		// src/f32/neon/vec3a.rs:1330
		let t1 = math::sin(theta * (1.0 - s));
	fsub s1, s11, s1
	fmul s1, s1, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	fmov s0, s1
	bl sinf
	ldur q1, [x29, #-48]
	str q0, [sp]
		// src/f32/neon/vec3a.rs:1331
		let t2 = math::sin(theta * s);
	fmul s1, s1, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	fmov s0, s1
	bl sinf
	ldp q4, q2, [sp, #32]
	ldur q3, [x29, #-48]
		// src/f32/float.rs:8
		self + (rhs - self) * t
	fsub s1, s10, s2
	fmul s1, s3, s1
		// src/f32/neon/vec3a.rs:1338
		* (1.0 / sin_theta);
	fdiv s3, s11, s9
		// src/f32/float.rs:8
		self + (rhs - self) * t
	fadd s1, s2, s1
		// src/f32/neon/vec3a.rs:1336
		return (self * (result_length / self_length) * t1
	fdiv s2, s1, s2
		// src/f32/neon/vec3a.rs:1337
		+ rhs * (result_length / rhs_length) * t2)
	fdiv s1, s1, s10
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v2.4s, v4.4s, v2.s[0]
	ldp q4, q5, [sp]
	fmul v2.4s, v2.4s, v4.s[0]
	fmul v1.4s, v5.4s, v1.s[0]
	fmul v0.4s, v1.4s, v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v0.4s, v2.4s, v0.4s
	b .LBB158_8
.LBB158_2:
		// src/f32/neon/vec3a.rs:1340
		if dot < 0.0 {
	fcmp s0, #0.0
	b.pl .LBB158_5
	mov s1, v4.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	fabs s0, s4
	stp q4, q3, [sp, #32]
	mov s8, v4.s[2]
	fabs s2, s1
		// src/f32/neon/vec3a.rs:1267
		if math::abs(self.x) > math::abs(self.y) {
	fcmp s0, s2
	b.le .LBB158_6
		// src/f32/neon/vec3a.rs:1268
		Self::new(-self.z, 0.0, self.x) // self.cross(Self::Y)
	fneg s1, s8
		// src/f32/neon/vec3a.rs:108
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	movi v0.2d, #0000000000000000
	mov v0.s[0], v1.s[0]
	mov v0.s[2], v4.s[0]
	mov v0.s[3], v4.s[0]
	b .LBB158_7
.LBB158_5:
	fmov s0, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v1.4s, v1.4s, v5.s[0]
		// src/f32/neon/vec3a.rs:996
		self * (1.0 - s) + rhs * s
	fsub s0, s0, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v0.4s, v4.4s, v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v0.4s, v1.4s, v0.4s
		// src/f32/neon/vec3a.rs:1340
		if dot < 0.0 {
	b .LBB158_9
.LBB158_6:
		// src/f32/neon/vec3a.rs:108
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	movi v0.2d, #0000000000000000
		// src/f32/neon/vec3a.rs:1270
		Self::new(0.0, self.z, -self.y) // self.cross(Self::X)
	fneg s1, s1
		// src/f32/neon/vec3a.rs:108
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	mov v0.s[1], v4.s[2]
	mov v0.s[2], v1.s[0]
	mov v0.s[3], v1.s[0]
.LBB158_7:
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v1.4s, v0.4s, v0.4s
	mov w8, #4059
	fmov s3, #0.50000000
	movk w8, #16457, lsl #16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	add x0, x29, #28
	add x1, x29, #24
	stur q5, [x29, #-48]
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	faddp s2, v1.2s
	mov s1, v1.s[2]
	fadd s1, s1, s2
	fmov s2, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s1, s1
		// src/f32/neon/vec3a.rs:619
		1.0 / self.length()
	fdiv s1, s2, s1
	fmov s2, w8
		// src/f32/neon/vec3a.rs:1345
		let rotation = Quat::from_axis_angle(axis, core::f32::consts::PI * s);
	fmul s2, s5, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v0.4s, v0.4s, v1.s[0]
	str q0, [sp, #16]
		// src/f32/neon/quat.rs:148
		let (s, c) = math::sin_cos(angle * 0.5);
	fmul s0, s2, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	bl sincosf
	ldp s20, s0, [x29, #24]
	ldr q21, [sp, #48]
	ldp q2, q22, [sp, #16]
	ldur q23, [x29, #-48]
		// src/f32/float.rs:8
		self + (rhs - self) * t
	fsub s5, s10, s21
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.2s, v2.2s, v0.s[0]
	fmul s0, s0, v2.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	uzp1 v17.4s, v22.4s, v22.4s
	ext v18.16b, v22.16b, v22.16b, #4
		// src/f32/float.rs:8
		self + (rhs - self) * t
	fmul s5, s23, s5
		// src/f32/neon/quat.rs:82
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v2.16b, v1.16b
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v3.2s, v1.2s, v1.2s
	fmul v4.2s, v22.2s, v1.2s
	fmul s6, s0, s0
	fmul s7, s8, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v18.s[2], v22.s[0]
		// src/f32/neon/quat.rs:82
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v2.s[2], v0.s[0]
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	faddp s3, v3.2s
	faddp s4, v4.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	ext v16.16b, v2.16b, v2.16b, #4
	ext v19.16b, v0.16b, v2.16b, #12
		// src/f32/neon/quat.rs:82
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	mov v2.s[3], v20.s[0]
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s3, s6, s3
	fadd s4, s7, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v16.s[2], v1.s[0]
		// src/f32/neon/quat.rs:924
		vmulq_n_f32(rhs.0, (w * w) - b2),
	fmul s1, s20, s20
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v19.s[0], v0.s[0]
	ext v0.16b, v17.16b, v22.16b, #12
		// src/f32/neon/quat.rs:925
		vmulq_n_f32(b.0, rhs.dot(b) * 2.0),
	fadd s4, s4, s4
		// src/f32/neon/quat.rs:924
		vmulq_n_f32(rhs.0, (w * w) - b2),
	fsub s1, s1, s3
		// src/f32/float.rs:8
		self + (rhs - self) * t
	fadd s3, s21, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:29996
		unsafe { simd_sub(a, simd_mul(b, c)) }
	fmul v5.4s, v18.4s, v19.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v0.4s, v0.4s, v16.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v2.4s, v2.4s, v4.s[0]
		// src/f32/neon/quat.rs:927
		vmulq_n_f32(b.cross(rhs).0, w * 2.0),
	fadd s4, s20, s20
		// src/f32/neon/vec3a.rs:1348
		rotation * self * (result_length / self_length)
	fdiv s3, s3, s21
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v1.4s, v22.4s, v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:29996
		unsafe { simd_sub(a, simd_mul(b, c)) }
	fsub v0.4s, v0.4s, v5.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v1.4s, v1.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v0.4s, v0.4s, v4.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v0.4s, v0.4s, v1.4s
.LBB158_8:
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v0.4s, v0.4s, v3.s[0]
.LBB158_9:
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x19]
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 144
		// benches/gungraun.rs:516
		}
	ldp x29, x30, [sp, #112]
	ldr x19, [sp, #128]
	ldp d9, d8, [sp, #96]
	ldp d11, d10, [sp, #80]
	add sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	ret
