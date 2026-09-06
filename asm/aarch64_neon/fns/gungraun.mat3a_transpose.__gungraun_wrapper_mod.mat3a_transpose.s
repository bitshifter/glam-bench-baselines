.section .text.gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose,@function
gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose:
	.cfi_startproc
		// src/f32/neon/mat3a.rs:568
		let x = self.x_axis.0;
	ldp q0, q1, [x1]
		// src/f32/neon/mat3a.rs:570
		let z = self.z_axis.0;
	ldr q3, [x1, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	dup v4.4s, v3.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	zip1 v2.2d, v0.2d, v1.2d
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	zip2 v0.2d, v0.2d, v1.2d
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	uzp1 v1.4s, v2.4s, v3.4s
	uzp1 v0.4s, v0.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	uzp2 v2.4s, v2.4s, v4.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v1.s[3], v3.s[0]
	mov v0.s[2], v3.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q1, q2, [x0]
	str q0, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:291
		}
	ret
