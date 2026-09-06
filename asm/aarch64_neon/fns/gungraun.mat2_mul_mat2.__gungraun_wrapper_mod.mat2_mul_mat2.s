.section .text.gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2,"ax",@progbits
	.p2align	2
.type	gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2,@function
gungraun::mat2_mul_mat2::__gungraun_wrapper_mod::mat2_mul_mat2:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	zip1 v2.4s, v1.4s, v1.4s
	zip2 v1.4s, v1.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v2.4s, v0.4s, v2.4s
	fmul v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v1.16b, v2.16b
	zip2 v2.2d, v2.2d, v0.2d
	mov v1.d[1], v0.d[0]
	fadd v0.4s, v1.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:204
		}
	ret
