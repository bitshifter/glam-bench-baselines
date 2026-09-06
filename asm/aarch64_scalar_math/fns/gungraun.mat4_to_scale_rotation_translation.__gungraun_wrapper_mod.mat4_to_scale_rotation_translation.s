.section .text.gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation,@function
gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:255
		let r = Mat3::from_mat4(*self);
	ldr d2, [x1]
	ldr s3, [x1, #8]
	mov w8, #2143289344
	ldr d5, [x1, #16]
	ldr s6, [x1, #24]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov s0, v2.s[1]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v1.2s, v2.2s, v2.2s
	fmul s4, s3, s3
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul s16, s6, v2.s[1]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s0, s0, v2.s[1]
	fadd s0, s1, s0
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	dup v1.2s, v2.s[0]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s0, s0, s4
		// src/f32/scalar/mat4.rs:255
		let r = Mat3::from_mat4(*self);
	ldur d4, [x1, #20]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	mov v1.s[0], v3.s[0]
	ext v7.8b, v4.8b, v5.8b, #4
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul s17, s3, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s18, s0
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	zip1 v0.2s, v5.2s, v4.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub s17, s16, s17
		// src/f32/scalar/mat4.rs:255
		let r = Mat3::from_mat4(*self);
	ldur d16, [x1, #36]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fmul v0.2s, v1.2s, v0.2s
	fmul v1.2s, v2.2s, v7.2s
		// src/f32/scalar/mat4.rs:255
		let r = Mat3::from_mat4(*self);
	ldr d7, [x1, #32]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	zip2 v20.2s, v4.2s, v16.2s
	zip2 v19.2s, v5.2s, v7.2s
	fmul s17, s17, s7
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fsub v0.2s, v0.2s, v1.2s
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	zip1 v1.2s, v5.2s, v7.2s
	fmul v20.2s, v20.2s, v20.2s
	fmul v19.2s, v19.2s, v19.2s
	fmul v0.2s, v16.2s, v0.2s
	fmul v1.2s, v1.2s, v1.2s
	fadd s17, s17, s0
	mov s0, v0.s[1]
	fadd v1.2s, v1.2s, v19.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1656
		if self.is_nan() { Self::NAN } else { 1.0_f32.copysign(self) }
	mvni v19.4s, #128, lsl #24
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s0, s17, s0
	fadd v1.2s, v1.2s, v20.2s
	fmov s17, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1656
		if self.is_nan() { Self::NAN } else { 1.0_f32.copysign(self) }
	bsl v19.16b, v17.16b, v0.16b
	fcmp s0, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt v0.2s, v1.2s
	fmov s1, w8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1656
		if self.is_nan() { Self::NAN } else { 1.0_f32.copysign(self) }
	fcsel s1, s1, s19, vs
		// src/f32/scalar/mat4.rs:262
		r.x_axis.length() * math::signum(det),
	fmul s1, s18, s1
		// src/f32/vec3.rs:963
		Self::new(1.0 / self.x, 1.0 / self.y, 1.0 / self.z)
	fdiv s20, s17, s1
	mov s18, v0.s[1]
	fdiv s21, s17, s18
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s19, s20, s2
	fmul s3, s3, s20
	fmul s2, s20, v2.s[1]
		// src/f32/vec3.rs:963
		Self::new(1.0 / self.x, 1.0 / self.y, 1.0 / self.z)
	fdiv s22, s17, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s18, s21, v16.s[1]
		// src/f32/scalar/quat.rs:212
		if m22 <= 0.0 {
	fcmp s18, #0.0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s5, s22, s5
	fmul s20, s22, s4
	fmul s4, s6, s22
	fmul s6, s21, s7
	fmul s7, s21, s16
		// src/f32/scalar/quat.rs:212
		if m22 <= 0.0 {
	b.ls .LBB280_3
		// src/f32/scalar/quat.rs:239
		let sum10 = m11 + m00;
	fadd s16, s20, s19
		// src/f32/scalar/quat.rs:240
		let opm22 = 1.0 + m22;
	fadd s17, s18, s17
		// src/f32/scalar/quat.rs:241
		if sum10 <= 0.0 {
	fcmp s16, #0.0
	b.ls .LBB280_5
		// src/f32/scalar/quat.rs:253
		let four_wsq = opm22 + sum10;
	fadd s16, s17, s16
	fmov s18, #0.50000000
		// src/f32/scalar/quat.rs:256
		(m12 - m21) * inv4w,
	fsub s4, s4, s7
		// src/f32/scalar/quat.rs:257
		(m20 - m02) * inv4w,
	fsub s3, s6, s3
		// src/f32/scalar/quat.rs:258
		(m01 - m10) * inv4w,
	fsub s5, s2, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s17, s16
		// src/f32/scalar/quat.rs:254
		let inv4w = 0.5 / math::sqrt(four_wsq);
	fdiv s17, s18, s17
		// src/f32/scalar/quat.rs:256
		(m12 - m21) * inv4w,
	fmul s2, s4, s17
		// src/f32/scalar/quat.rs:257
		(m20 - m02) * inv4w,
	fmul s3, s3, s17
		// src/f32/scalar/quat.rs:258
		(m01 - m10) * inv4w,
	fmul s4, s5, s17
		// src/f32/scalar/quat.rs:259
		four_wsq * inv4w,
	fmul s5, s16, s17
		// src/f32/scalar/quat.rs:241
		if sum10 <= 0.0 {
	b .LBB280_7
.LBB280_3:
		// src/f32/scalar/quat.rs:214
		let dif10 = m11 - m00;
	fsub s16, s20, s19
		// src/f32/scalar/quat.rs:215
		let omm22 = 1.0 - m22;
	fsub s17, s17, s18
		// src/f32/scalar/quat.rs:216
		if dif10 <= 0.0 {
	fcmp s16, #0.0
	b.ls .LBB280_6
		// src/f32/scalar/quat.rs:228
		let four_ysq = omm22 + dif10;
	fadd s16, s17, s16
	fmov s18, #0.50000000
		// src/f32/scalar/quat.rs:231
		(m01 + m10) * inv4y,
	fadd s2, s5, s2
		// src/f32/scalar/quat.rs:233
		(m12 + m21) * inv4y,
	fadd s4, s4, s7
		// src/f32/scalar/quat.rs:234
		(m20 - m02) * inv4y,
	fsub s5, s6, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s17, s16
		// src/f32/scalar/quat.rs:229
		let inv4y = 0.5 / math::sqrt(four_ysq);
	fdiv s17, s18, s17
		// src/f32/scalar/quat.rs:231
		(m01 + m10) * inv4y,
	fmul s2, s2, s17
		// src/f32/scalar/quat.rs:232
		four_ysq * inv4y,
	fmul s3, s16, s17
		// src/f32/scalar/quat.rs:233
		(m12 + m21) * inv4y,
	fmul s4, s4, s17
		// src/f32/scalar/quat.rs:234
		(m20 - m02) * inv4y,
	fmul s5, s5, s17
		// src/f32/scalar/quat.rs:216
		if dif10 <= 0.0 {
	b .LBB280_7
.LBB280_5:
		// src/f32/scalar/quat.rs:243
		let four_zsq = opm22 - sum10;
	fsub s16, s17, s16
	fmov s18, #0.50000000
		// src/f32/scalar/quat.rs:246
		(m02 + m20) * inv4z,
	fadd s3, s6, s3
		// src/f32/scalar/quat.rs:247
		(m12 + m21) * inv4z,
	fadd s4, s4, s7
		// src/f32/scalar/quat.rs:249
		(m01 - m10) * inv4z,
	fsub s5, s2, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s17, s16
		// src/f32/scalar/quat.rs:244
		let inv4z = 0.5 / math::sqrt(four_zsq);
	fdiv s17, s18, s17
		// src/f32/scalar/quat.rs:246
		(m02 + m20) * inv4z,
	fmul s2, s3, s17
		// src/f32/scalar/quat.rs:247
		(m12 + m21) * inv4z,
	fmul s3, s4, s17
		// src/f32/scalar/quat.rs:248
		four_zsq * inv4z,
	fmul s4, s16, s17
		// src/f32/scalar/quat.rs:249
		(m01 - m10) * inv4z,
	fmul s5, s5, s17
		// src/f32/scalar/quat.rs:216
		if dif10 <= 0.0 {
	b .LBB280_7
.LBB280_6:
		// src/f32/scalar/quat.rs:218
		let four_xsq = omm22 - dif10;
	fsub s16, s17, s16
	fmov s18, #0.50000000
		// src/f32/scalar/quat.rs:222
		(m01 + m10) * inv4x,
	fadd s5, s5, s2
		// src/f32/scalar/quat.rs:223
		(m02 + m20) * inv4x,
	fadd s6, s6, s3
		// src/f32/scalar/quat.rs:224
		(m12 - m21) * inv4x,
	fsub s7, s4, s7
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s17, s16
		// src/f32/scalar/quat.rs:219
		let inv4x = 0.5 / math::sqrt(four_xsq);
	fdiv s17, s18, s17
		// src/f32/scalar/quat.rs:221
		four_xsq * inv4x,
	fmul s2, s16, s17
		// src/f32/scalar/quat.rs:222
		(m01 + m10) * inv4x,
	fmul s3, s5, s17
		// src/f32/scalar/quat.rs:223
		(m02 + m20) * inv4x,
	fmul s4, s6, s17
		// src/f32/scalar/quat.rs:224
		(m12 - m21) * inv4x,
	fmul s5, s7, s17
.LBB280_7:
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s2, s3, [x0]
		// src/f32/scalar/mat4.rs:277
		let translation = self.w_axis.xyz();
	ldr s2, [x1, #56]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s1, [x0, #16]
		// src/f32/scalar/mat4.rs:277
		let translation = self.w_axis.xyz();
	ldr d1, [x1, #48]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s4, s5, [x0, #8]
	stur d0, [x0, #20]
	stur d1, [x0, #28]
	str s2, [x0, #36]
	//APP
	//NO_APP
		// benches/gungraun.rs:390
		}
	ret
