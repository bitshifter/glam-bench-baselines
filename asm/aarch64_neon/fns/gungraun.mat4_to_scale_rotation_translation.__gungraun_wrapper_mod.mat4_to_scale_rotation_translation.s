.section .text.gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation,@function
gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation:
	.cfi_startproc
		// src/f32/neon/mat4.rs:253
		let r = Mat3A::from_mat4(*self);
	ldp q2, q3, [x1]
	mov w8, #2143289344
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v0.4s, v2.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	uzp1 v4.4s, v3.4s, v3.4s
	uzp1 v5.4s, v2.4s, v2.4s
	ext v6.16b, v3.16b, v3.16b, #12
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	ext v16.16b, v3.16b, v3.16b, #8
	faddp s1, v0.2s
	mov s0, v0.s[2]
	fadd s0, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v1.16b, v2.16b, v2.16b, #12
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s7, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v0.16b, v1.16b, v2.16b, #8
	ext v1.16b, v4.16b, v3.16b, #12
	ext v4.16b, v5.16b, v2.16b, #12
	ext v5.16b, v6.16b, v3.16b, #8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:29996
		unsafe { simd_sub(a, simd_mul(b, c)) }
	fmul v1.4s, v4.4s, v5.4s
		// src/f32/neon/mat4.rs:253
		let r = Mat3A::from_mat4(*self);
	ldr q4, [x1, #32]
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	zip2 v5.2s, v3.2s, v4.2s
	ext v6.16b, v4.16b, v4.16b, #8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:29996
		unsafe { simd_sub(a, simd_mul(b, c)) }
	fsub v0.4s, v0.4s, v1.4s
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	zip1 v1.2s, v3.2s, v4.2s
	fmul v5.2s, v5.2s, v5.2s
	zip1 v6.2s, v16.2s, v6.2s
	fmul v0.4s, v4.4s, v0.4s
	fmul v1.2s, v1.2s, v1.2s
	fmul v6.2s, v6.2s, v6.2s
	faddp s16, v0.2s
	mov s0, v0.s[2]
	fadd v1.2s, v1.2s, v5.2s
	fmov s5, #1.00000000
	fadd s0, s0, s16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1656
		if self.is_nan() { Self::NAN } else { 1.0_f32.copysign(self) }
	mvni v16.4s, #128, lsl #24
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd v1.2s, v6.2s, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1656
		if self.is_nan() { Self::NAN } else { 1.0_f32.copysign(self) }
	mov v6.16b, v16.16b
	fcmp s0, s0
	bsl v6.16b, v5.16b, v0.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt v0.2s, v1.2s
	fmov s1, w8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1656
		if self.is_nan() { Self::NAN } else { 1.0_f32.copysign(self) }
	fcsel s1, s1, s6, vs
		// src/f32/neon/mat4.rs:260
		r.x_axis.length() * math::signum(det),
	fmul s1, s7, s1
		// src/f32/vec3.rs:963
		Self::new(1.0 / self.x, 1.0 / self.y, 1.0 / self.z)
	fdiv s6, s5, s1
	mov s7, v0.s[1]
	fdiv s7, s5, s7
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v2.4s, v2.4s, v6.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/mem/mod.rs:1227
		unsafe { intrinsics::transmute_unchecked(src) }
	mov s6, v2.s[1]
		// src/f32/vec3.rs:963
		Self::new(1.0 / self.x, 1.0 / self.y, 1.0 / self.z)
	fdiv s16, s5, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v4.4s, v4.4s, v7.s[0]
	fmul v3.4s, v3.4s, v16.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/mem/mod.rs:1227
		unsafe { intrinsics::transmute_unchecked(src) }
	mov s16, v4.s[2]
	mov s7, v3.s[1]
		// src/f32/neon/quat.rs:214
		if m22 <= 0.0 {
	fcmp s16, #0.0
	b.ls .LBB276_3
		// src/f32/neon/quat.rs:241
		let sum10 = m11 + m00;
	fadd s7, s7, s2
		// src/f32/neon/quat.rs:242
		let opm22 = 1.0 + m22;
	fadd s16, s16, s5
	fsub s5, s6, s3
		// src/f32/neon/quat.rs:243
		if sum10 <= 0.0 {
	fcmp s7, #0.0
	b.ls .LBB276_5
		// src/f32/neon/quat.rs:255
		let four_wsq = opm22 + sum10;
	fadd s6, s16, s7
		// src/f32/neon/quat.rs:258
		(m12 - m21) * inv4w,
	uzp1 v16.4s, v3.4s, v4.4s
	zip2 v2.4s, v4.4s, v2.4s
	fmov s17, #0.50000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s7, s6
		// src/f32/neon/quat.rs:258
		(m12 - m21) * inv4w,
	zip2 v3.4s, v3.4s, v16.4s
	trn2 v2.4s, v4.4s, v2.4s
	fsub v2.4s, v3.4s, v2.4s
	mov v2.s[2], v5.s[0]
	mov v2.s[3], v6.s[0]
		// src/f32/neon/quat.rs:256
		let inv4w = 0.5 / math::sqrt(four_wsq);
	fdiv s4, s17, s7
		// src/f32/neon/quat.rs:258
		(m12 - m21) * inv4w,
	fmul v2.4s, v2.4s, v4.s[0]
		// src/f32/neon/quat.rs:243
		if sum10 <= 0.0 {
	b .LBB276_7
.LBB276_3:
		// src/f32/neon/quat.rs:216
		let dif10 = m11 - m00;
	fsub s7, s7, s2
		// src/f32/neon/quat.rs:217
		let omm22 = 1.0 - m22;
	fsub s5, s5, s16
		// src/f32/neon/quat.rs:218
		if dif10 <= 0.0 {
	fcmp s7, #0.0
	b.ls .LBB276_6
		// src/f32/neon/quat.rs:230
		let four_ysq = omm22 + dif10;
	fadd s5, s5, s7
	fmov s16, #0.50000000
		// src/f32/neon/quat.rs:235
		(m12 + m21) * inv4y,
	ext v2.16b, v2.16b, v2.16b, #8
	dup v17.2s, v3.s[2]
		// src/f32/neon/quat.rs:233
		(m01 + m10) * inv4y,
	fadd s3, s3, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s7, s5
		// src/f32/neon/quat.rs:235
		(m12 + m21) * inv4y,
	fsub v2.2s, v4.2s, v2.2s
	fadd v6.2s, v4.2s, v17.2s
		// src/f32/neon/quat.rs:233
		(m01 + m10) * inv4y,
	mov v3.s[1], v5.s[0]
		// src/f32/neon/quat.rs:235
		(m12 + m21) * inv4y,
	ext v2.8b, v6.8b, v2.8b, #4
		// src/f32/neon/quat.rs:233
		(m01 + m10) * inv4y,
	mov v3.d[1], v2.d[0]
		// src/f32/neon/quat.rs:231
		let inv4y = 0.5 / math::sqrt(four_ysq);
	fdiv s7, s16, s7
		// src/f32/neon/quat.rs:233
		(m01 + m10) * inv4y,
	fmul v2.4s, v3.4s, v7.s[0]
		// src/f32/neon/quat.rs:218
		if dif10 <= 0.0 {
	b .LBB276_7
.LBB276_5:
		// src/f32/neon/quat.rs:245
		let four_zsq = opm22 - sum10;
	fsub s6, s16, s7
	fmov s16, #0.50000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s7, s6
		// src/f32/neon/quat.rs:246
		let inv4z = 0.5 / math::sqrt(four_zsq);
	fdiv s7, s16, s7
		// src/f32/neon/quat.rs:251
		(m01 - m10) * inv4z,
	mov v16.16b, v4.16b
	mov v4.s[0], v2.s[2]
	mov v16.s[1], v3.s[2]
	fadd v2.4s, v16.4s, v4.4s
	mov v2.s[2], v7.s[0]
	mov v7.s[1], v6.s[0]
	dup v3.4s, v7.s[0]
	mov v2.s[3], v5.s[0]
	zip1 v3.4s, v7.4s, v3.4s
		// src/f32/neon/quat.rs:248
		(m02 + m20) * inv4z,
	fmul v2.4s, v2.4s, v3.4s
		// src/f32/neon/quat.rs:243
		if sum10 <= 0.0 {
	b .LBB276_7
.LBB276_6:
		// src/f32/neon/quat.rs:220
		let four_xsq = omm22 - dif10;
	trn1 v6.4s, v3.4s, v4.4s
	ext v3.16b, v3.16b, v6.16b, #12
	fadd v6.4s, v3.4s, v2.4s
	mov v2.s[0], v7.s[0]
	mov v3.s[0], v5.s[0]
	mov v2.s[3], v4.s[1]
	fmov s4, #0.50000000
	fsub v2.4s, v3.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s3, s2
		// src/f32/neon/quat.rs:220
		let four_xsq = omm22 - dif10;
	mov v6.s[0], v2.s[0]
	mov v6.s[3], v2.s[3]
		// src/f32/neon/quat.rs:221
		let inv4x = 0.5 / math::sqrt(four_xsq);
	fdiv s3, s4, s3
		// src/f32/neon/quat.rs:223
		four_xsq * inv4x,
	fmul v2.4s, v6.4s, v3.s[0]
.LBB276_7:
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q2, [x0]
		// src/f32/neon/mat4.rs:275
		let translation = self.w_axis.xyz();
	ldr q2, [x1, #48]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	add x8, x0, #36
	str s1, [x0, #16]
	stur d0, [x0, #20]
	stur d2, [x0, #28]
	st1 { v2.s }[2], [x8]
	//APP
	//NO_APP
		// benches/gungraun.rs:390
		}
	ret
