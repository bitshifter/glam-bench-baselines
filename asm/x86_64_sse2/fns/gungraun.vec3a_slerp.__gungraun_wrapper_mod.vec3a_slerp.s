.section .text.gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp,@function
gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp:
		// benches/gungraun.rs:511
		#[bench::general(black_box(Vec3A::X), black_box(Vec3A::Y), bb_f32())]
	.cfi_startproc
	push rbx
	.cfi_def_cfa_offset 16
	sub rsp, 96
	.cfi_def_cfa_offset 112
	.cfi_offset rbx, -16
	movaps xmm9, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm4, xmm0
	shufps xmm4, xmm0, 85
	addps xmm4, xmm0
	movaps xmm3, xmm0
	unpckhpd xmm3, xmm0
	addps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	movss xmm0, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:138
		unsafe { simd_fsqrt(a) }
	sqrtps xmm10, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm0, xmm1
	mulps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm4, xmm0
	shufps xmm4, xmm0, 85
	addps xmm4, xmm0
	movaps xmm3, xmm0
	unpckhpd xmm3, xmm0
	addps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	movss xmm0, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:138
		unsafe { simd_fsqrt(a) }
	sqrtps xmm11, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm8, xmm9
	mulps xmm8, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm0, xmm8
	shufps xmm0, xmm8, 85
	addss xmm0, xmm8
	movhlps xmm8, xmm8
	addss xmm8, xmm0
		// src/f32/sse2/vec3a.rs:1336
		let dot = self.dot(rhs) / (self_length * rhs_length);
	movaps xmm0, xmm10
	mulss xmm0, xmm11
	divss xmm8, xmm0
	movaps xmm4, xmmword ptr [rip + .LCPI158_0]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	andps xmm4, xmm8
	movss xmm0, dword ptr [rip + .LCPI158_1]
		// src/f32/sse2/vec3a.rs:1338
		if math::abs(dot) < 1.0 - 3e-7 {
	ucomiss xmm0, xmm4
	jbe .LBB158_1
	movss xmm0, dword ptr [rip + .LCPI158_2]
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	movaps xmm6, xmm0
	movss xmm5, dword ptr [rip + .LCPI158_6]
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm5, xmm4
	addss xmm5, dword ptr [rip + .LCPI158_7]
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	subss xmm6, xmm4
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm5, xmm4
	addss xmm5, dword ptr [rip + .LCPI158_8]
	xorps xmm3, xmm3
	mulss xmm5, xmm4
	addss xmm5, dword ptr [rip + .LCPI158_9]
		// src/f32/math.rs:9
		if omx < 0.0 {
	xorps xmm7, xmm7
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm5, xmm4
	addss xmm5, dword ptr [rip + .LCPI158_10]
		// src/f32/math.rs:9
		if omx < 0.0 {
	maxss xmm7, xmm6
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm5, xmm4
	addss xmm5, dword ptr [rip + .LCPI158_11]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm6, xmm6
	sqrtss xmm6, xmm7
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm5, xmm4
	addss xmm5, dword ptr [rip + .LCPI158_12]
	mulss xmm5, xmm4
	addss xmm5, dword ptr [rip + .LCPI158_13]
		// src/f32/math.rs:25
		result *= root;
	mulss xmm5, xmm6
	movss xmm4, dword ptr [rip + .LCPI158_4]
		// src/f32/math.rs:28
		if nonnegative {
	subss xmm4, xmm5
	cmpnless xmm3, xmm8
	movaps xmm6, xmm3
	andnps xmm6, xmm5
	andps xmm3, xmm4
	orps xmm3, xmm6
		// src/f32/sse2/vec3a.rs:1342
		let x = 1.0 - s;
	movaps xmm4, xmm0
	subss xmm4, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm3, xmm3, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:975
		__m128([d, c, b, a])
	unpcklps xmm4, xmm2
	movss xmm5, dword ptr [rip + .LCPI158_2]
	movlhps xmm4, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm4, xmm3
	movaps xmm6, xmmword ptr [rip + .LCPI158_14]
	mulps xmm6, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	movaps xmm3, xmmword ptr [rip + .LCPI158_3]
	movaps xmm12, xmmword ptr [rip + .LCPI158_0]
	movaps xmm5, xmm6
	andps xmm5, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:531
		unsafe { cmpps(a, b, 2) }
	cmpleps xmm5, xmmword ptr [rip + .LCPI158_15]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:282
		mem::transmute(simd_and(simd_xor(mask, a), b))
	movaps xmm7, xmm5
	andnps xmm7, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	movaps xmm8, xmm6
	andps xmm8, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:302
		mem::transmute(simd_or(a, b))
	orps xmm8, xmmword ptr [rip + .LCPI158_15]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm6, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm6, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	andps xmm5, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:323
		mem::transmute(simd_xor(a, b))
	orps xmm5, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm5, xmmword ptr [rip + .LCPI158_16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	addps xmm5, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	andps xmm3, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:302
		mem::transmute(simd_or(a, b))
	orps xmm3, xmmword ptr [rip + .LCPI158_17]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:282
		mem::transmute(simd_and(simd_xor(mask, a), b))
	andps xmm12, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm3, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:531
		unsafe { cmpps(a, b, 2) }
	cmpleps xmm12, xmmword ptr [rip + .LCPI158_18]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	andps xmm5, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:282
		mem::transmute(simd_and(simd_xor(mask, a), b))
	andnps xmm12, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:302
		mem::transmute(simd_or(a, b))
	orps xmm12, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm4, xmm12
	mulps xmm4, xmm12
	movaps xmm3, xmmword ptr [rip + .LCPI158_19]
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmmword ptr [rip + .LCPI158_20]
		// src/f32/float.rs:8
		self + (rhs - self) * t
	movaps xmm5, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmmword ptr [rip + .LCPI158_21]
		// src/f32/float.rs:8
		self + (rhs - self) * t
	subss xmm5, xmm10
	mulss xmm5, xmm2
	addss xmm5, xmm10
		// src/f32/sse2/vec3a.rs:1359
		return (self * (result_length / self_length) * t1
	movaps xmm6, xmm5
		// src/f32/sse2/vec3a.rs:1360
		+ rhs * (result_length / rhs_length) * t2)
	divss xmm5, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmmword ptr [rip + .LCPI158_22]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmmword ptr [rip + .LCPI158_23]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmmword ptr [rip + .LCPI158_24]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:188
		($x:expr, $idx:expr $(,)?) => {{ $crate::intrinsics::simd::simd_extract($x, const { $idx }) }};
	movaps xmm2, xmm3
	unpckhpd xmm2, xmm3
		// src/f32/sse2/vec3a.rs:1359
		return (self * (result_length / self_length) * t1
	divss xmm6, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm6, xmm6, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm9, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	movaps xmm4, xmm3
	shufps xmm4, xmm3, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm4, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm5, xmm5, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm3, xmm3, 85
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmm4
		// src/f32/sse2/vec3a.rs:1361
		* (1.0 / sin_theta);
	divss xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm0, xmm0, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm3
	movaps xmm6, xmm0
		// src/f32/sse2/vec3a.rs:1376
		}
	jmp .LBB158_7
.LBB158_1:
	xorps xmm0, xmm0
		// src/f32/sse2/vec3a.rs:1363
		if dot < 0.0 {
	ucomiss xmm0, xmm8
	jbe .LBB158_2
	movaps xmm0, xmmword ptr [rip + .LCPI158_0]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	andps xmm0, xmm9
		// src/f32/sse2/vec3a.rs:1280
		if math::abs(self.x) > math::abs(self.y) {
	pshufd xmm1, xmm0, 85
	ucomiss xmm0, xmm1
	movaps xmmword ptr [rsp + 80], xmm10
	movaps xmmword ptr [rsp + 64], xmm11
	movaps xmmword ptr [rsp + 48], xmm9
	mov rbx, rdi
	jbe .LBB158_4
	movaps xmm1, xmmword ptr [rip + .LCPI158_3]
		// src/f32/sse2/vec3a.rs:111
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	xorps xmm1, xmm9
	xorps xmm0, xmm0
	unpckhps xmm1, xmm0
	shufps xmm1, xmm9, 4
	jmp .LBB158_6
.LBB158_2:
	movss xmm0, dword ptr [rip + .LCPI158_2]
		// src/f32/sse2/vec3a.rs:1000
		self * (1.0 - s) + rhs * s
	subss xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm0, xmm0, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm9, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm2, xmm2, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm1, xmm9
	movaps xmm6, xmm1
		// src/f32/sse2/vec3a.rs:1374
		self.lerp(rhs, s)
	jmp .LBB158_7
.LBB158_4:
		// src/f32/sse2/vec3a.rs:1280
		if math::abs(self.x) > math::abs(self.y) {
	movaps xmm0, xmm9
	shufps xmm0, xmm9, 85
		// src/f32/sse2/vec3a.rs:1283
		Self::new(0.0, self.z, -self.y) // self.cross(Self::X)
	xorps xmm0, xmmword ptr [rip + .LCPI158_3]
		// src/f32/sse2/vec3a.rs:111
		unsafe { UnionCast { a: [x, y, z, z] }.v }
	xorps xmm1, xmm1
	unpckhps xmm1, xmm9
	shufps xmm1, xmm0, 4
.LBB158_6:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm0, xmm1
	mulps xmm0, xmm1
	movaps xmm3, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 85
	addss xmm1, xmm0
	movhlps xmm0, xmm0
	addss xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:138
		unsafe { simd_fsqrt(a) }
	sqrtss xmm0, xmm0
	shufps xmm0, xmm0, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:114
		unsafe { simd_div(a, b) }
	divps xmm3, xmm0
	movaps xmmword ptr [rsp + 16], xmm3
	movss xmm0, dword ptr [rip + .LCPI158_4]
		// src/f32/sse2/vec3a.rs:1368
		let rotation = Quat::from_axis_angle(axis, core::f32::consts::PI * s);
	mulss xmm0, xmm2
		// src/f32/sse2/quat.rs:151
		let (s, c) = math::sin_cos(angle * 0.5);
	mulss xmm0, dword ptr [rip + .LCPI158_5]
	lea rdi, [rsp + 12]
	lea rsi, [rsp + 8]
	movaps xmmword ptr [rsp + 32], xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	call qword ptr [rip + sincosf@GOTPCREL]
	movss xmm1, dword ptr [rsp + 12]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm0, xmm1
	movaps xmm2, xmmword ptr [rsp + 16]
	mulss xmm0, xmm2
		// src/f32/sse2/quat.rs:85
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	shufps xmm1, xmm1, 0
	shufps xmm2, xmm2, 233
	mulps xmm2, xmm1
	movlhps xmm0, xmm2
	movaps xmm1, xmm0
	shufps xmm1, xmm2, 216
	movaps xmm3, xmm2
	movss xmm2, dword ptr [rsp + 8]
	shufps xmm2, xmm3, 212
	shufps xmm0, xmm2, 40
	movaps xmm5, xmmword ptr [rsp + 80]
	movaps xmm6, xmmword ptr [rsp + 64]
		// src/f32/float.rs:8
		self + (rhs - self) * t
	subss xmm6, xmm5
	mulss xmm6, dword ptr [rsp + 32]
	addss xmm6, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm3, xmm0
	mulps xmm3, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm3
	shufps xmm2, xmm3, 170
	movaps xmm4, xmm3
	shufps xmm4, xmm3, 85
	addss xmm4, xmm3
	shufps xmm4, xmm4, 0
	addps xmm4, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	shufps xmm3, xmm3, 255
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm3, xmm4
	movaps xmm7, xmmword ptr [rsp + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm7
	movaps xmm2, xmm7
	mulps xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:23
		unsafe { simd_insert!(a, 0, _mm_cvtss_f32(a) + _mm_cvtss_f32(b)) }
	movaps xmm4, xmm2
	shufps xmm4, xmm2, 85
	addss xmm4, xmm2
	movhlps xmm2, xmm2
	addss xmm2, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	addss xmm2, xmm2
	shufps xmm2, xmm2, 0
	mulps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm2, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm3, xmm7
	shufps xmm3, xmm7, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm1, xmm1, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm1, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm1, xmm1, 82
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	addps xmm0, xmm0
	shufps xmm0, xmm0, 255
	mulps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm0, xmm2
		// src/f32/sse2/vec3a.rs:1371
		rotation * self * (result_length / self_length)
	divss xmm6, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm6, xmm6, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm6, xmm0
	mov rdi, rbx
.LBB158_7:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm6
	#APP
	#NO_APP
		// benches/gungraun.rs:516
		}
	add rsp, 96
	.cfi_def_cfa_offset 16
	pop rbx
	.cfi_def_cfa_offset 8
	ret
