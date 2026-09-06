.section .text.gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross,@function
gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v2.16b, v0.16b, v0.16b, #4
	uzp1 v3.4s, v1.4s, v1.4s
	uzp1 v4.4s, v0.4s, v0.4s
	ext v5.16b, v1.16b, v1.16b, #4
	mov v2.s[2], v0.s[0]
	ext v0.16b, v4.16b, v0.16b, #12
	ext v3.16b, v3.16b, v1.16b, #12
	mov v5.s[2], v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v2.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:29996
		unsafe { simd_sub(a, simd_mul(b, c)) }
	fmul v0.4s, v0.4s, v5.4s
	fsub v0.4s, v1.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:477
		}
	ret
