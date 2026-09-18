.section .text.gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation,@function
gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:305
		let r = Mat3::from_mat4(*self);
	movss xmm3, dword ptr [rsi]
	movss xmm0, dword ptr [rsi + 24]
	movss xmm2, dword ptr [rsi + 40]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm4, xmm3
	mulss xmm4, xmm3
		// src/f32/scalar/mat4.rs:305
		let r = Mat3::from_mat4(*self);
	movsd xmm8, qword ptr [rsi + 4]
	movsd xmm1, qword ptr [rsi + 16]
	movsd xmm5, qword ptr [rsi + 32]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm9, xmm0
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	movaps xmm7, xmm0
	mulss xmm7, xmm5
	movaps xmm6, xmm1
	mulss xmm6, xmm2
	subss xmm7, xmm6
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulss xmm7, xmm8
	movaps xmm10, xmm8
	movaps xmm11, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm6, xmm8
	shufps xmm0, xmm8, 212
	shufps xmm0, xmm8, 82
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulps xmm8, xmm8
	addss xmm4, xmm8
	shufps xmm8, xmm8, 85
	addss xmm8, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	sqrtss xmm8, xmm8
		// src/f32/scalar/mat4.rs:305
		let r = Mat3::from_mat4(*self);
	movss xmm13, dword ptr [rsi + 20]
	movss xmm12, dword ptr [rsi + 36]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm4, xmm13
	mulss xmm4, xmm2
	mulss xmm9, xmm12
	subss xmm4, xmm9
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm9, xmm1
	mulss xmm9, xmm12
	movaps xmm14, xmm13
	mulss xmm14, xmm5
	subss xmm9, xmm14
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulss xmm4, xmm3
	addss xmm7, xmm4
	shufps xmm10, xmm10, 85
	mulss xmm10, xmm9
	addss xmm10, xmm7
	movaps xmm7, xmmword ptr [rip + .LCPI283_0]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1656
		if self.is_nan() { Self::NAN } else { 1.0_f32.copysign(self) }
	andps xmm7, xmm10
	orps xmm7, xmmword ptr [rip + .LCPI283_1]
	cmpunordss xmm10, xmm10
	movss xmm4, dword ptr [rip + .LCPI283_2]
	andps xmm4, xmm10
	andnps xmm10, xmm7
	orps xmm4, xmm10
		// src/f32/scalar/mat4.rs:312
		r.x_axis.length() * math::signum(det),
	mulss xmm4, xmm8
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm7, xmm1
	unpcklps xmm7, xmm5
	mulps xmm7, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movlhps xmm12, xmm5
	shufps xmm12, xmm5, 226
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	shufps xmm5, xmm1, 17
	shufps xmm5, xmm1, 226
	mulps xmm5, xmm5
	addps xmm5, xmm7
	unpcklps xmm11, xmm2
	mulps xmm11, xmm11
	addps xmm11, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	sqrtps xmm5, xmm11
	movaps xmm9, xmm5
	shufps xmm9, xmm5, 85
		// src/f32/vec3.rs:963
		Self::new(1.0 / self.x, 1.0 / self.y, 1.0 / self.z)
	movaps xmm7, xmm5
	shufps xmm7, xmm5, 0
	movss xmm7, xmm4
	movaps xmm10, xmmword ptr [rip + .LCPI283_3]
	divps xmm10, xmm7
	movss xmm7, dword ptr [rip + .LCPI283_4]
	movaps xmm8, xmm7
	divss xmm8, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm3, xmm10
	mulss xmm6, xmm10
	mulps xmm0, xmm10
	movaps xmm9, xmm10
	shufps xmm9, xmm10, 85
	mulss xmm1, xmm9
	mulss xmm9, xmm13
	mulss xmm2, xmm8
	shufps xmm8, xmm8, 0
	mulps xmm8, xmm12
	xorps xmm10, xmm10
		// src/f32/scalar/quat.rs:212
		if m22 <= 0.0 {
	ucomiss xmm10, xmm2
	jae .LBB283_5
		// src/f32/scalar/quat.rs:239
		let sum10 = m11 + m00;
	addss xmm9, xmm3
		// src/f32/scalar/quat.rs:240
		let opm22 = 1.0 + m22;
	addss xmm2, dword ptr [rip + .LCPI283_4]
		// src/f32/scalar/quat.rs:241
		if sum10 <= 0.0 {
	ucomiss xmm10, xmm9
	jae .LBB283_3
		// src/f32/scalar/quat.rs:256
		(m12 - m21) * inv4w,
	movaps xmm3, xmm8
	shufps xmm3, xmm0, 16
	movlhps xmm2, xmm6
	shufps xmm6, xmm0, 244
	movaps xmm10, xmm3
	shufps xmm10, xmm6, 130
	shufps xmm3, xmm2, 34
	shufps xmm0, xmm8, 16
	movlhps xmm9, xmm1
	shufps xmm1, xmm8, 244
	movaps xmm2, xmm0
	shufps xmm2, xmm1, 130
	subps xmm10, xmm2
	shufps xmm0, xmm9, 34
	addps xmm0, xmm3
	movaps xmm1, xmm0
	shufps xmm1, xmm10, 35
	shufps xmm10, xmm1, 36
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	shufps xmm0, xmm0, 255
	sqrtss xmm0, xmm0
	movss xmm7, dword ptr [rip + .LCPI283_5]
		// src/f32/scalar/quat.rs:254
		let inv4w = 0.5 / math::sqrt(four_wsq);
	divss xmm7, xmm0
		// src/f32/scalar/quat.rs:259
		four_wsq * inv4w,
	shufps xmm7, xmm7, 0
		// src/f32/scalar/quat.rs:256
		(m12 - m21) * inv4w,
	mulps xmm7, xmm10
		// src/f32/scalar/quat.rs:241
		if sum10 <= 0.0 {
	jmp .LBB283_7
.LBB283_5:
		// src/f32/scalar/quat.rs:214
		let dif10 = m11 - m00;
	subss xmm9, xmm3
		// src/f32/scalar/quat.rs:215
		let omm22 = 1.0 - m22;
	subss xmm7, xmm2
		// src/f32/scalar/quat.rs:216
		if dif10 <= 0.0 {
	ucomiss xmm10, xmm9
	jae .LBB283_6
		// src/f32/scalar/quat.rs:231
		(m01 + m10) * inv4y,
	unpcklps xmm1, xmm7
	shufps xmm1, xmm0, 212
	unpcklps xmm6, xmm9
	shufps xmm6, xmm8, 212
	addps xmm6, xmm1
	subps xmm8, xmm0
	shufps xmm8, xmm6, 228
	movaps xmm0, xmm6
	shufps xmm0, xmm8, 36
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	shufps xmm6, xmm6, 85
	xorps xmm1, xmm1
	sqrtss xmm1, xmm6
	movss xmm7, dword ptr [rip + .LCPI283_5]
		// src/f32/scalar/quat.rs:229
		let inv4y = 0.5 / math::sqrt(four_ysq);
	divss xmm7, xmm1
		// src/f32/scalar/quat.rs:234
		(m20 - m02) * inv4y,
	shufps xmm7, xmm7, 0
		// src/f32/scalar/quat.rs:231
		(m01 + m10) * inv4y,
	mulps xmm7, xmm0
		// src/f32/scalar/quat.rs:216
		if dif10 <= 0.0 {
	jmp .LBB283_7
.LBB283_3:
		// src/f32/scalar/quat.rs:243
		let four_zsq = opm22 - sum10;
	subss xmm2, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm3, xmm3
	sqrtss xmm3, xmm2
	movss xmm7, dword ptr [rip + .LCPI283_5]
		// src/f32/scalar/quat.rs:244
		let inv4z = 0.5 / math::sqrt(four_zsq);
	divss xmm7, xmm3
		// src/f32/scalar/quat.rs:246
		(m02 + m20) * inv4z,
	addps xmm0, xmm8
		// src/f32/scalar/quat.rs:249
		(m01 - m10) * inv4z,
	subss xmm6, xmm1
	movaps xmm1, xmm7
	unpcklps xmm1, xmm6
	movlhps xmm0, xmm1
	unpcklps xmm7, xmm2
	shufps xmm7, xmm7, 16
		// src/f32/scalar/quat.rs:246
		(m02 + m20) * inv4z,
	mulps xmm7, xmm0
		// src/f32/scalar/quat.rs:216
		if dif10 <= 0.0 {
	jmp .LBB283_7
.LBB283_6:
		// src/f32/scalar/quat.rs:218
		let four_xsq = omm22 - dif10;
	subss xmm7, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm2, xmm2
	sqrtss xmm2, xmm7
	movss xmm3, dword ptr [rip + .LCPI283_5]
		// src/f32/scalar/quat.rs:219
		let inv4x = 0.5 / math::sqrt(four_xsq);
	divss xmm3, xmm2
		// src/f32/scalar/quat.rs:222
		(m01 + m10) * inv4x,
	addss xmm1, xmm6
		// src/f32/scalar/quat.rs:223
		(m02 + m20) * inv4x,
	movaps xmm2, xmm0
	addps xmm2, xmm8
	subps xmm0, xmm8
		// src/f32/scalar/quat.rs:221
		four_xsq * inv4x,
	shufps xmm0, xmm2, 1
		// src/f32/scalar/quat.rs:224
		(m12 - m21) * inv4x,
	shufps xmm3, xmm3, 0
		// src/f32/scalar/quat.rs:221
		four_xsq * inv4x,
	unpcklps xmm7, xmm1
	shufps xmm7, xmm0, 36
	mulps xmm7, xmm3
.LBB283_7:
		// src/f32/scalar/mat4.rs:327
		let translation = self.w_axis.xyz();
	movss xmm0, dword ptr [rsi + 56]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm7
	movss dword ptr [rdi + 16], xmm4
	movlps qword ptr [rdi + 20], xmm5
		// src/f32/scalar/mat4.rs:327
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
