.section .text.gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation,@function
gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:255
		let r = Mat3::from_mat4(*self);
	movss xmm5, dword ptr [rsi]
	movss xmm4, dword ptr [rsi + 40]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm0, xmm5
	mulss xmm0, xmm5
		// src/f32/scalar/mat4.rs:255
		let r = Mat3::from_mat4(*self);
	movsd xmm6, qword ptr [rsi + 4]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm1, xmm6
	mulps xmm1, xmm6
	addss xmm0, xmm1
	shufps xmm1, xmm1, 85
	addss xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	sqrtss xmm7, xmm1
		// src/f32/scalar/mat4.rs:255
		let r = Mat3::from_mat4(*self);
	movsd xmm2, qword ptr [rsi + 16]
	movsd xmm3, qword ptr [rsi + 32]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm1, xmm6
	mulss xmm1, xmm2
		// src/f32/scalar/mat4.rs:255
		let r = Mat3::from_mat4(*self);
	movsd xmm0, qword ptr [rsi + 20]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm8, xmm5
	shufps xmm8, xmm6, 212
	shufps xmm8, xmm6, 82
	mulps xmm8, xmm0
	movaps xmm10, xmm2
	shufps xmm10, xmm0, 16
	shufps xmm10, xmm0, 226
	mulps xmm10, xmm6
	subps xmm10, xmm8
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm8, xmm5
	mulss xmm8, xmm0
	subss xmm8, xmm1
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movss xmm9, dword ptr [rsi + 36]
	movlhps xmm9, xmm3
	shufps xmm9, xmm3, 226
	mulps xmm10, xmm9
	movaps xmm1, xmm10
	shufps xmm1, xmm10, 85
	addss xmm1, xmm10
	mulss xmm8, xmm4
	addss xmm8, xmm1
	movaps xmm10, xmmword ptr [rip + .LCPI280_0]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1656
		if self.is_nan() { Self::NAN } else { 1.0_f32.copysign(self) }
	andps xmm10, xmm8
	orps xmm10, xmmword ptr [rip + .LCPI280_1]
	cmpunordss xmm8, xmm8
	movss xmm1, dword ptr [rip + .LCPI280_2]
	andps xmm1, xmm8
	andnps xmm8, xmm10
	orps xmm1, xmm8
		// src/f32/scalar/mat4.rs:262
		r.x_axis.length() * math::signum(det),
	mulss xmm1, xmm7
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm7, xmm2
	unpcklps xmm7, xmm3
	mulps xmm7, xmm7
	shufps xmm3, xmm2, 17
	shufps xmm3, xmm2, 226
	mulps xmm3, xmm3
	addps xmm3, xmm7
	movaps xmm7, xmm4
	shufps xmm7, xmm0, 212
	shufps xmm7, xmm0, 82
	mulps xmm7, xmm7
	addps xmm7, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	sqrtps xmm3, xmm7
	movaps xmm10, xmm3
	shufps xmm10, xmm3, 85
		// src/f32/vec3.rs:963
		Self::new(1.0 / self.x, 1.0 / self.y, 1.0 / self.z)
	movaps xmm7, xmm3
	shufps xmm7, xmm3, 0
	movss xmm7, xmm1
	movaps xmm11, xmmword ptr [rip + .LCPI280_3]
	divps xmm11, xmm7
	movss xmm7, dword ptr [rip + .LCPI280_4]
	movaps xmm8, xmm7
	divss xmm8, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm5, xmm11
	movaps xmm10, xmm11
	shufps xmm10, xmm11, 85
	mulss xmm2, xmm10
	mulss xmm10, xmm0
	shufps xmm0, xmm6, 17
	shufps xmm0, xmm6, 226
	mulss xmm6, xmm11
	mulps xmm0, xmm11
	mulss xmm4, xmm8
	shufps xmm8, xmm8, 0
	mulps xmm8, xmm9
	xorps xmm9, xmm9
		// src/f32/scalar/quat.rs:212
		if m22 <= 0.0 {
	ucomiss xmm9, xmm4
	jae .LBB280_5
		// src/f32/scalar/quat.rs:239
		let sum10 = m11 + m00;
	addss xmm10, xmm5
		// src/f32/scalar/quat.rs:240
		let opm22 = 1.0 + m22;
	addss xmm4, dword ptr [rip + .LCPI280_4]
		// src/f32/scalar/quat.rs:241
		if sum10 <= 0.0 {
	ucomiss xmm9, xmm10
	jae .LBB280_3
		// src/f32/scalar/quat.rs:256
		(m12 - m21) * inv4w,
	movaps xmm5, xmm8
	shufps xmm5, xmm0, 16
	movlhps xmm4, xmm6
	shufps xmm6, xmm0, 244
	movaps xmm9, xmm5
	shufps xmm9, xmm6, 130
	shufps xmm5, xmm4, 34
	shufps xmm0, xmm8, 16
	movlhps xmm10, xmm2
	shufps xmm2, xmm8, 244
	movaps xmm4, xmm0
	shufps xmm4, xmm2, 130
	subps xmm9, xmm4
	shufps xmm0, xmm10, 34
	addps xmm0, xmm5
	movaps xmm2, xmm0
	shufps xmm2, xmm9, 35
	shufps xmm9, xmm2, 36
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	shufps xmm0, xmm0, 255
	sqrtss xmm0, xmm0
	movss xmm7, dword ptr [rip + .LCPI280_5]
		// src/f32/scalar/quat.rs:254
		let inv4w = 0.5 / math::sqrt(four_wsq);
	divss xmm7, xmm0
		// src/f32/scalar/quat.rs:259
		four_wsq * inv4w,
	shufps xmm7, xmm7, 0
		// src/f32/scalar/quat.rs:256
		(m12 - m21) * inv4w,
	mulps xmm7, xmm9
		// src/f32/scalar/quat.rs:241
		if sum10 <= 0.0 {
	jmp .LBB280_7
.LBB280_5:
		// src/f32/scalar/quat.rs:214
		let dif10 = m11 - m00;
	subss xmm10, xmm5
		// src/f32/scalar/quat.rs:215
		let omm22 = 1.0 - m22;
	subss xmm7, xmm4
		// src/f32/scalar/quat.rs:216
		if dif10 <= 0.0 {
	ucomiss xmm9, xmm10
	jae .LBB280_6
		// src/f32/scalar/quat.rs:231
		(m01 + m10) * inv4y,
	unpcklps xmm2, xmm7
	shufps xmm2, xmm0, 212
	unpcklps xmm6, xmm10
	shufps xmm6, xmm8, 212
	addps xmm6, xmm2
	subps xmm8, xmm0
	shufps xmm8, xmm6, 228
	movaps xmm0, xmm6
	shufps xmm0, xmm8, 36
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	shufps xmm6, xmm6, 85
	xorps xmm2, xmm2
	sqrtss xmm2, xmm6
	movss xmm7, dword ptr [rip + .LCPI280_5]
		// src/f32/scalar/quat.rs:229
		let inv4y = 0.5 / math::sqrt(four_ysq);
	divss xmm7, xmm2
		// src/f32/scalar/quat.rs:234
		(m20 - m02) * inv4y,
	shufps xmm7, xmm7, 0
		// src/f32/scalar/quat.rs:231
		(m01 + m10) * inv4y,
	mulps xmm7, xmm0
		// src/f32/scalar/quat.rs:216
		if dif10 <= 0.0 {
	jmp .LBB280_7
.LBB280_3:
		// src/f32/scalar/quat.rs:243
		let four_zsq = opm22 - sum10;
	subss xmm4, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm5, xmm5
	sqrtss xmm5, xmm4
	movss xmm7, dword ptr [rip + .LCPI280_5]
		// src/f32/scalar/quat.rs:244
		let inv4z = 0.5 / math::sqrt(four_zsq);
	divss xmm7, xmm5
		// src/f32/scalar/quat.rs:246
		(m02 + m20) * inv4z,
	addps xmm0, xmm8
		// src/f32/scalar/quat.rs:249
		(m01 - m10) * inv4z,
	subss xmm6, xmm2
	movaps xmm2, xmm7
	unpcklps xmm2, xmm6
	movlhps xmm0, xmm2
	unpcklps xmm7, xmm4
	shufps xmm7, xmm7, 16
		// src/f32/scalar/quat.rs:246
		(m02 + m20) * inv4z,
	mulps xmm7, xmm0
		// src/f32/scalar/quat.rs:216
		if dif10 <= 0.0 {
	jmp .LBB280_7
.LBB280_6:
		// src/f32/scalar/quat.rs:218
		let four_xsq = omm22 - dif10;
	subss xmm7, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm4, xmm4
	sqrtss xmm4, xmm7
	movss xmm5, dword ptr [rip + .LCPI280_5]
		// src/f32/scalar/quat.rs:219
		let inv4x = 0.5 / math::sqrt(four_xsq);
	divss xmm5, xmm4
		// src/f32/scalar/quat.rs:222
		(m01 + m10) * inv4x,
	addss xmm2, xmm6
		// src/f32/scalar/quat.rs:223
		(m02 + m20) * inv4x,
	movaps xmm4, xmm0
	addps xmm4, xmm8
	subps xmm0, xmm8
		// src/f32/scalar/quat.rs:221
		four_xsq * inv4x,
	shufps xmm0, xmm4, 1
		// src/f32/scalar/quat.rs:224
		(m12 - m21) * inv4x,
	shufps xmm5, xmm5, 0
		// src/f32/scalar/quat.rs:221
		four_xsq * inv4x,
	unpcklps xmm7, xmm2
	shufps xmm7, xmm0, 36
	mulps xmm7, xmm5
.LBB280_7:
		// src/f32/scalar/mat4.rs:277
		let translation = self.w_axis.xyz();
	movss xmm0, dword ptr [rsi + 56]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm7
	movss dword ptr [rdi + 16], xmm1
	movlps qword ptr [rdi + 20], xmm3
		// src/f32/scalar/mat4.rs:277
		let translation = self.w_axis.xyz();
	movsd xmm1, qword ptr [rsi + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movsd qword ptr [rdi + 28], xmm1
	movss dword ptr [rdi + 36], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:390
		}
	ret
