.section .text.gungraun::quat_mul_quat::__gungraun_wrapper_mod::quat_mul_quat,"ax",@progbits
	.p2align	2
.type	gungraun::quat_mul_quat::__gungraun_wrapper_mod::quat_mul_quat,@function
gungraun::quat_mul_quat::__gungraun_wrapper_mod::quat_mul_quat:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	rev64 v3.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmov v2.4s, #1.00000000
	adrp x8, .LCPI188_0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	ext v5.16b, v1.16b, v1.16b, #8
	adrp x9, .LCPI188_1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	ldr q6, [x8, :lo12:.LCPI188_0]
	ldr q7, [x9, :lo12:.LCPI188_1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	ext v4.16b, v3.16b, v3.16b, #8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fneg v2.2d, v2.2d
	fmul v3.4s, v3.4s, v0.s[2]
	fmul v5.4s, v5.4s, v0.s[1]
	fmul v4.4s, v4.4s, v0.s[0]
	fmul v0.4s, v1.4s, v0.s[3]
	fmul v3.4s, v3.4s, v7.4s
	fmul v1.4s, v4.4s, v2.4s
	fmul v2.4s, v5.4s, v6.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v0.4s, v0.4s, v1.4s
	fadd v1.4s, v2.4s, v3.4s
	fadd v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:408
		}
	ret
