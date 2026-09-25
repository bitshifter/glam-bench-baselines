.section .text.gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross,@function
gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v2.16b, v0.16b, v0.16b, #4
	uzp1 v3.4s, v1.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15148
		let b: float32x4_t = simd_neg(b);
	fneg v4.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v2.s[2], v0.s[0]
	ext v0.16b, v3.16b, v1.16b, #12
	ext v3.16b, v1.16b, v1.16b, #4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15148
		let b: float32x4_t = simd_neg(b);
	uzp1 v5.4s, v4.4s, v4.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v0.4s, v2.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v3.s[2], v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15148
		let b: float32x4_t = simd_neg(b);
	ext v1.16b, v5.16b, v4.16b, #12
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15008
		unsafe { simd_fma(b, c, a) }
	fmla v0.4s, v3.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:477
		}
	ret
