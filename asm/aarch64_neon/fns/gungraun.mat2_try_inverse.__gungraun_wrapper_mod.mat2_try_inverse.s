.section .text.gungraun::mat2_try_inverse::__gungraun_wrapper_mod::mat2_try_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat2_try_inverse::__gungraun_wrapper_mod::mat2_try_inverse,@function
gungraun::mat2_try_inverse::__gungraun_wrapper_mod::mat2_try_inverse:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	rev64 v1.4s, v0.4s
	adrp x8, .LCPI226_0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:3712
		unsafe { simd_and(a, b) }
	ldr q3, [x8, :lo12:.LCPI226_0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	ext v1.16b, v1.16b, v1.16b, #8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	dup v2.4s, v1.s[0]
	dup v1.4s, v1.s[1]
	fsub v1.4s, v2.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:5250
		unsafe { simd_eq(a, b) }
	fcmeq v2.4s, v1.4s, #0.0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:3712
		unsafe { simd_and(a, b) }
	and v2.16b, v2.16b, v3.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	ext v3.16b, v2.16b, v2.16b, #8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:34865
		unsafe { simd_or(a, b) }
	orr v2.16b, v3.16b, v2.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	dup v3.4s, v2.s[3]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:34865
		unsafe { simd_or(a, b) }
	orr v2.16b, v3.16b, v2.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:188
		($x:expr, $idx:expr $(,)?) => {{ $crate::intrinsics::simd::simd_extract($x, const { $idx }) }};
	fmov w8, s2
		// src/f32/neon/mat2.rs:337
		if Vec4(det) == Vec4::ZERO {
	cmp w8, #15
	b.eq .LBB226_2
	adrp x9, .LCPI226_1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:7921
		unsafe { simd_div(a, b) }
	ldr q2, [x9, :lo12:.LCPI226_1]
	fdiv v1.4s, v2.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v2.16b, v0.16b
	mov v2.s[0], v0.s[3]
	mov v2.s[3], v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v2.4s, v2.4s, v1.4s
.LBB226_2:
		// src/f32/neon/mat2.rs:337
		if Vec4(det) == Vec4::ZERO {
	cmp w8, #15
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q2, [x0, #16]
		// src/f32/neon/mat2.rs:337
		if Vec4(det) == Vec4::ZERO {
	cset w8, ne
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp x8, xzr, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:198
		}
	ret
