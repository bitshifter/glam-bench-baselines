.section .text.gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation,@function
gungraun::mat4_to_scale_rotation_translation::__gungraun_wrapper_mod::mat4_to_scale_rotation_translation:
	.cfi_startproc
		// src/f32/sse2/mat4.rs:256
		let r = Mat3A::from_mat4(*self);
	movaps xmm6, xmmword ptr [rsi]
	movaps xmm2, xmmword ptr [rsi + 16]
	movaps xmm5, xmmword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm3, xmm6
	shufps xmm3, xmm6, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm2
	movaps xmm0, xmm2
	mulps xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:188
		($x:expr, $idx:expr $(,)?) => {{ $crate::intrinsics::simd::simd_extract($x, const { $idx }) }};
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 85
	addss xmm1, xmm0
	movhlps xmm0, xmm0
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss xmm4, dword ptr [rip + .LCPI276_3]
		// src/f32/vec3.rs:963
		Self::new(1.0 / self.x, 1.0 / self.y, 1.0 / self.z)
	movaps xmm1, xmm4
	divss xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm1, xmm1, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm2, xmm2, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm3, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm3, xmm3, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm2, xmm3
	shufps xmm2, xmm3, 85
	addss xmm2, xmm3
	movhlps xmm3, xmm3
	addss xmm3, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm2, xmm6
	mulps xmm2, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:188
		($x:expr, $idx:expr $(,)?) => {{ $crate::intrinsics::simd::simd_extract($x, const { $idx }) }};
	movaps xmm7, xmm2
	shufps xmm7, xmm2, 85
	addss xmm7, xmm2
	movhlps xmm2, xmm2
	addss xmm2, xmm7
	xorps xmm7, xmm7
	sqrtss xmm7, xmm2
	movaps xmm8, xmmword ptr [rip + .LCPI276_0]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1656
		if self.is_nan() { Self::NAN } else { 1.0_f32.copysign(self) }
	andps xmm8, xmm3
	orps xmm8, xmmword ptr [rip + .LCPI276_1]
	cmpunordss xmm3, xmm3
	movss xmm2, dword ptr [rip + .LCPI276_2]
	andps xmm2, xmm3
	andnps xmm3, xmm8
	orps xmm2, xmm3
		// src/f32/sse2/mat4.rs:263
		r.x_axis.length() * math::signum(det),
	mulss xmm2, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm3, xmm5
	mulps xmm3, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:188
		($x:expr, $idx:expr $(,)?) => {{ $crate::intrinsics::simd::simd_extract($x, const { $idx }) }};
	movaps xmm7, xmm3
	shufps xmm7, xmm3, 85
	addss xmm7, xmm3
	movhlps xmm3, xmm3
	addss xmm3, xmm7
	sqrtss xmm3, xmm3
		// src/f32/vec3.rs:963
		Self::new(1.0 / self.x, 1.0 / self.y, 1.0 / self.z)
	movaps xmm7, xmm4
	divss xmm7, xmm2
	movaps xmm8, xmm4
	divss xmm8, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm7, xmm7, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm7, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm8, xmm8, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm8, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/mem/mod.rs:1227
		unsafe { intrinsics::transmute_unchecked(src) }
	movaps xmm11, xmm7
	movaps xmm5, xmm7
	shufps xmm5, xmm7, 85
	movhlps xmm7, xmm7
	movaps xmm6, xmm1
	movaps xmm10, xmm1
	shufps xmm10, xmm1, 85
	movhlps xmm1, xmm1
	movaps xmm9, xmm8
	shufps xmm9, xmm8, 85
	movaps xmm12, xmm8
	unpckhpd xmm12, xmm8
	xorps xmm13, xmm13
		// src/f32/sse2/quat.rs:217
		if m22 <= 0.0 {
	ucomiss xmm13, xmm12
	jae .LBB276_5
		// src/f32/sse2/quat.rs:244
		let sum10 = m11 + m00;
	addss xmm10, xmm11
	movss xmm4, dword ptr [rip + .LCPI276_3]
		// src/f32/sse2/quat.rs:245
		let opm22 = 1.0 + m22;
	addss xmm4, xmm12
		// src/f32/sse2/quat.rs:246
		if sum10 <= 0.0 {
	ucomiss xmm13, xmm10
	jae .LBB276_3
		// src/f32/sse2/quat.rs:258
		let four_wsq = opm22 + sum10;
	addss xmm4, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm10, xmm10
	sqrtss xmm10, xmm4
	movss xmm11, dword ptr [rip + .LCPI276_4]
		// src/f32/sse2/quat.rs:259
		let inv4w = 0.5 / math::sqrt(four_wsq);
	divss xmm11, xmm10
		// src/f32/sse2/quat.rs:261
		(m12 - m21) * inv4w,
	subss xmm1, xmm9
		// src/f32/sse2/quat.rs:262
		(m20 - m02) * inv4w,
	subss xmm8, xmm7
		// src/f32/sse2/quat.rs:261
		(m12 - m21) * inv4w,
	unpcklps xmm1, xmm8
		// src/f32/sse2/quat.rs:263
		(m01 - m10) * inv4w,
	subss xmm5, xmm6
		// src/f32/sse2/quat.rs:264
		four_wsq * inv4w,
	shufps xmm11, xmm11, 0
		// src/f32/sse2/quat.rs:261
		(m12 - m21) * inv4w,
	unpcklps xmm5, xmm4
	movlhps xmm1, xmm5
	mulps xmm1, xmm11
		// src/f32/sse2/quat.rs:246
		if sum10 <= 0.0 {
	jmp .LBB276_7
.LBB276_5:
		// src/f32/sse2/quat.rs:219
		let dif10 = m11 - m00;
	subss xmm10, xmm11
		// src/f32/sse2/quat.rs:220
		let omm22 = 1.0 - m22;
	subss xmm4, xmm12
		// src/f32/sse2/quat.rs:221
		if dif10 <= 0.0 {
	ucomiss xmm13, xmm10
	jae .LBB276_6
		// src/f32/sse2/quat.rs:233
		let four_ysq = omm22 + dif10;
	addss xmm4, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm10, xmm10
	sqrtss xmm10, xmm4
	movss xmm11, dword ptr [rip + .LCPI276_4]
		// src/f32/sse2/quat.rs:234
		let inv4y = 0.5 / math::sqrt(four_ysq);
	divss xmm11, xmm10
		// src/f32/sse2/quat.rs:236
		(m01 + m10) * inv4y,
	addss xmm5, xmm6
		// src/f32/sse2/quat.rs:238
		(m12 + m21) * inv4y,
	addss xmm1, xmm9
		// src/f32/sse2/quat.rs:239
		(m20 - m02) * inv4y,
	subss xmm8, xmm7
		// src/f32/sse2/quat.rs:236
		(m01 + m10) * inv4y,
	unpcklps xmm1, xmm8
		// src/f32/sse2/quat.rs:239
		(m20 - m02) * inv4y,
	shufps xmm11, xmm11, 0
		// src/f32/sse2/quat.rs:236
		(m01 + m10) * inv4y,
	unpcklps xmm5, xmm4
	movlhps xmm5, xmm1
	mulps xmm5, xmm11
	movaps xmm1, xmm5
		// src/f32/sse2/quat.rs:221
		if dif10 <= 0.0 {
	jmp .LBB276_7
.LBB276_3:
		// src/f32/sse2/quat.rs:248
		let four_zsq = opm22 - sum10;
	subss xmm4, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm10, xmm10
	sqrtss xmm10, xmm4
	movss xmm11, dword ptr [rip + .LCPI276_4]
		// src/f32/sse2/quat.rs:249
		let inv4z = 0.5 / math::sqrt(four_zsq);
	divss xmm11, xmm10
		// src/f32/sse2/quat.rs:251
		(m02 + m20) * inv4z,
	addss xmm7, xmm8
		// src/f32/sse2/quat.rs:252
		(m12 + m21) * inv4z,
	addss xmm1, xmm9
		// src/f32/sse2/quat.rs:254
		(m01 - m10) * inv4z,
	unpcklps xmm7, xmm1
	subss xmm5, xmm6
	movaps xmm1, xmm11
	unpcklps xmm1, xmm5
	movlhps xmm7, xmm1
	unpcklps xmm11, xmm4
	shufps xmm11, xmm11, 16
		// src/f32/sse2/quat.rs:251
		(m02 + m20) * inv4z,
	mulps xmm11, xmm7
	movaps xmm1, xmm11
		// src/f32/sse2/quat.rs:246
		if sum10 <= 0.0 {
	jmp .LBB276_7
.LBB276_6:
		// src/f32/sse2/quat.rs:223
		let four_xsq = omm22 - dif10;
	subss xmm4, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm10, xmm10
	sqrtss xmm10, xmm4
	movss xmm11, dword ptr [rip + .LCPI276_4]
		// src/f32/sse2/quat.rs:224
		let inv4x = 0.5 / math::sqrt(four_xsq);
	divss xmm11, xmm10
		// src/f32/sse2/quat.rs:227
		(m01 + m10) * inv4x,
	addss xmm5, xmm6
		// src/f32/sse2/quat.rs:228
		(m02 + m20) * inv4x,
	addss xmm7, xmm8
		// src/f32/sse2/quat.rs:229
		(m12 - m21) * inv4x,
	subss xmm1, xmm9
		// src/f32/sse2/quat.rs:226
		four_xsq * inv4x,
	unpcklps xmm7, xmm1
		// src/f32/sse2/quat.rs:229
		(m12 - m21) * inv4x,
	shufps xmm11, xmm11, 0
		// src/f32/sse2/quat.rs:226
		four_xsq * inv4x,
	unpcklps xmm4, xmm5
	movlhps xmm4, xmm7
	mulps xmm4, xmm11
	movaps xmm1, xmm4
.LBB276_7:
		// src/f32/sse2/mat4.rs:278
		let translation = self.w_axis.xyz();
	movaps xmm4, xmmword ptr [rsi + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm1
	movss dword ptr [rdi + 16], xmm2
	movss dword ptr [rdi + 20], xmm0
	movss dword ptr [rdi + 24], xmm3
	movlps qword ptr [rdi + 28], xmm4
		// src/swizzles/sse2/vec4_impl.rs:237
		Vec3::new(self.x, self.y, self.z)
	movhlps xmm4, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi + 36], xmm4
	#APP
	#NO_APP
		// benches/gungraun.rs:390
		}
	ret
