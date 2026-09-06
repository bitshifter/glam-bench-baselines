.section .text.gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2,"ax",@progbits
	.p2align	2
.type	gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2,@function
gungraun::affine2_mul_affine2::__gungraun_wrapper_mod::affine2_mul_affine2:
	.cfi_startproc
		// benches/gungraun.rs:593
		black_box(a1 * a2)
	ldr d0, [x2, #16]
	ldr q1, [x2]
	ldr q2, [x1]
	zip1 v0.4s, v0.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	zip1 v3.4s, v1.4s, v1.4s
	zip2 v1.4s, v1.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v0.4s, v2.4s, v0.4s
	fmul v3.4s, v2.4s, v3.4s
	fmul v1.4s, v2.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	ext v2.16b, v0.16b, v0.16b, #8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v4.16b, v3.16b
	zip2 v3.2d, v3.2d, v1.2d
	mov v4.d[1], v1.d[0]
		// benches/gungraun.rs:593
		black_box(a1 * a2)
	ldr d1, [x1, #16]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.2s, v0.2s, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	fadd v2.4s, v4.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.2s, v1.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q2, [x0]
	str d0, [x0, #16]
	//APP
	//NO_APP
		// benches/gungraun.rs:594
		}
	ret
