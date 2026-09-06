.section .text.gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp,"ax",@progbits
	.p2align	4
.type	gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp,@function
gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm3, xmm0
	mulps xmm3, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm4, xmm3
	unpckhpd xmm4, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm4, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:188
		($x:expr, $idx:expr $(,)?) => {{ $crate::intrinsics::simd::simd_extract($x, const { $idx }) }};
	movaps xmm6, xmm4
	shufps xmm6, xmm4, 85
	addss xmm6, xmm4
		// src/f32/sse2/quat.rs:782
		if dot < 0.0 {
	movaps xmm3, xmmword ptr [rip + .LCPI148_0]
	movaps xmm5, xmm6
	xorps xmm5, xmm3
	ucomiss xmm5, xmm6
	jbe .LBB148_2
	xorps xmm1, xmm3
.LBB148_2:
	maxss xmm5, xmm6
		// src/f32/sse2/quat.rs:788
		if dot > DOT_THRESHOLD {
	ucomiss xmm5, dword ptr [rip + .LCPI148_1]
	jbe .LBB148_3
	movss xmm3, dword ptr [rip + .LCPI148_3]
		// src/f32/sse2/quat.rs:706
		(self * (1.0 - s) + end * s).normalize()
	subss xmm3, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm3, xmm3, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm2, xmm2, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm0, xmm2
	mulps xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 14
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:138
		unsafe { simd_fsqrt(a) }
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0
	shufps xmm1, xmm1, 85
	addps xmm1, xmm0
	sqrtps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:114
		unsafe { simd_div(a, b) }
	divps xmm2, xmm0
	movaps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:465
		}
	ret
.LBB148_3:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	andps xmm6, xmmword ptr [rip + .LCPI148_2]
	movss xmm7, dword ptr [rip + .LCPI148_4]
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm7, xmm6
	addss xmm7, dword ptr [rip + .LCPI148_5]
	movss xmm4, dword ptr [rip + .LCPI148_3]
	mulss xmm7, xmm6
	addss xmm7, dword ptr [rip + .LCPI148_6]
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	movaps xmm8, xmm4
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm7, xmm6
	addss xmm7, dword ptr [rip + .LCPI148_7]
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	subss xmm8, xmm6
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm7, xmm6
	addss xmm7, dword ptr [rip + .LCPI148_8]
		// src/f32/math.rs:9
		if omx < 0.0 {
	xorps xmm9, xmm9
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm7, xmm6
	addss xmm7, dword ptr [rip + .LCPI148_9]
		// src/f32/math.rs:9
		if omx < 0.0 {
	maxss xmm9, xmm8
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm7, xmm6
	addss xmm7, dword ptr [rip + .LCPI148_10]
	xorps xmm8, xmm8
	mulss xmm7, xmm6
	addss xmm7, dword ptr [rip + .LCPI148_11]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm6, xmm6
	sqrtss xmm6, xmm9
		// src/f32/math.rs:25
		result *= root;
	mulss xmm7, xmm6
	movss xmm6, dword ptr [rip + .LCPI148_12]
		// src/f32/math.rs:28
		if nonnegative {
	subss xmm6, xmm7
	cmpnless xmm8, xmm5
	movaps xmm5, xmm8
	andnps xmm5, xmm7
	andps xmm8, xmm6
	orps xmm8, xmm5
		// src/f32/sse2/quat.rs:740
		let x = 1.0 - s;
	subss xmm4, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm8, xmm8, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:975
		__m128([d, c, b, a])
	unpcklps xmm4, xmm2
	movss xmm2, dword ptr [rip + .LCPI148_3]
	movlhps xmm4, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm4, xmm8
	movaps xmm6, xmmword ptr [rip + .LCPI148_13]
	mulps xmm6, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	movaps xmm7, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	movaps xmm5, xmm6
	movaps xmm8, xmm6
	andps xmm8, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:302
		mem::transmute(simd_or(a, b))
	orps xmm8, xmmword ptr [rip + .LCPI148_14]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	movaps xmm2, xmmword ptr [rip + .LCPI148_2]
	andps xmm5, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:531
		unsafe { cmpps(a, b, 2) }
	cmpleps xmm5, xmmword ptr [rip + .LCPI148_14]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:282
		mem::transmute(simd_and(simd_xor(mask, a), b))
	movaps xmm9, xmm5
	andnps xmm9, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm7, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm7, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	andps xmm5, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:323
		mem::transmute(simd_xor(a, b))
	orps xmm5, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm5, xmmword ptr [rip + .LCPI148_15]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	addps xmm5, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	andps xmm3, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:302
		mem::transmute(simd_or(a, b))
	orps xmm3, xmmword ptr [rip + .LCPI148_16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:282
		mem::transmute(simd_and(simd_xor(mask, a), b))
	andps xmm2, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm3, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:531
		unsafe { cmpps(a, b, 2) }
	cmpleps xmm2, xmmword ptr [rip + .LCPI148_17]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	andps xmm5, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:282
		mem::transmute(simd_and(simd_xor(mask, a), b))
	andnps xmm2, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:302
		mem::transmute(simd_or(a, b))
	orps xmm2, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm4, xmm2
	mulps xmm4, xmm2
	movaps xmm3, xmmword ptr [rip + .LCPI148_18]
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmmword ptr [rip + .LCPI148_19]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmmword ptr [rip + .LCPI148_20]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmmword ptr [rip + .LCPI148_21]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmmword ptr [rip + .LCPI148_22]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmmword ptr [rip + .LCPI148_23]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm3
	shufps xmm2, xmm3, 0
	movaps xmm4, xmm3
	shufps xmm4, xmm3, 85
	shufps xmm3, xmm3, 170
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm2
	mulps xmm1, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:114
		unsafe { simd_div(a, b) }
	divps xmm1, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:465
		}
	ret
