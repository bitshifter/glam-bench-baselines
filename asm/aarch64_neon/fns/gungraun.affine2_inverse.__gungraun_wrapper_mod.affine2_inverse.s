.section .text.gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse,@function
gungraun::affine2_inverse::__gungraun_wrapper_mod::affine2_inverse:
	.cfi_startproc
		// src/f32/neon/mat2.rs:330
		let abcd = self.0;
	ldr q0, [x1]
	adrp x8, .LCPI208_0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	rev64 v1.4s, v0.4s
	ext v1.16b, v1.16b, v1.16b, #8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	dup v2.4s, v1.s[0]
	dup v1.4s, v1.s[1]
	fsub v1.4s, v2.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:7921
		unsafe { simd_div(a, b) }
	ldr q2, [x8, :lo12:.LCPI208_0]
	fdiv v1.4s, v2.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v2.16b, v0.16b
	mov v2.s[0], v0.s[3]
	mov v2.s[3], v0.s[0]
		// src/f32/affine2.rs:324
		let translation = -(matrix2 * self.translation);
	ldr d0, [x1, #16]
	zip1 v0.4s, v0.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v2.4s, v1.4s
	fmul v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q1, [x0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:719
		fn neg(self) -> $t { -self }
	ext v2.16b, v0.16b, v0.16b, #8
	fadd v0.2s, v0.2s, v2.2s
	fneg v0.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d0, [x0, #16]
	//APP
	//NO_APP
		// benches/gungraun.rs:588
		}
	ret
