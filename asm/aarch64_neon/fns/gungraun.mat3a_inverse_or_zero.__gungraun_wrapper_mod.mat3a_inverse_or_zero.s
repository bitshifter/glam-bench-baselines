.section .text.gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero,@function
gungraun::mat3a_inverse_or_zero::__gungraun_wrapper_mod::mat3a_inverse_or_zero:
	.cfi_startproc
		// src/f32/neon/mat3a.rs:712
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldp q5, q7, [x1, #16]
	movi v0.2d, #0000000000000000
		// src/f32/neon/mat3a.rs:713
		let det = self.x_axis.dot(tmp0);
	ldr q3, [x1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v1.16b, v5.16b, v5.16b, #4
	uzp1 v2.4s, v7.4s, v7.4s
	uzp1 v16.4s, v5.4s, v5.4s
	ext v6.16b, v7.16b, v7.16b, #4
	mov v1.s[2], v5.s[0]
	ext v4.16b, v2.16b, v7.16b, #12
	ext v5.16b, v16.16b, v5.16b, #12
	mov v6.s[2], v7.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v2.4s, v1.4s, v4.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15008
		unsafe { simd_fma(b, c, a) }
	fmls v2.4s, v6.4s, v5.4s
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v7.4s, v3.4s, v2.4s
	faddp s16, v7.2s
	mov s7, v7.s[2]
	fadd s17, s7, s16
	movi v16.2d, #0000000000000000
	movi v7.2d, #0000000000000000
		// src/f32/neon/mat3a.rs:715
		if det == 0.0 {
	fcmp s17, #0.0
	b.ne .LBB258_2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q0, q16, [x0]
	str q7, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:285
		}
	ret
.LBB258_2:
	fmov s0, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	uzp1 v7.4s, v3.4s, v3.4s
	ext v16.16b, v3.16b, v3.16b, #4
		// src/f32/neon/mat3a.rs:723
		let inv_det = Vec3A::splat(1.0 / det);
	fdiv s0, s0, s17
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v7.16b, v7.16b, v3.16b, #12
	mov v16.s[2], v3.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v6.4s, v6.4s, v7.4s
	fmul v3.4s, v5.4s, v16.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15008
		unsafe { simd_fma(b, c, a) }
	fmls v6.4s, v16.4s, v4.4s
	fmls v3.4s, v1.4s, v7.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v2.4s, v2.4s, v0.s[0]
	fmul v1.4s, v6.4s, v0.s[0]
	fmul v3.4s, v3.4s, v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v4.16b, v2.16b
	mov v4.d[1], v1.d[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	mov v1.s[0], v2.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	uzp1 v0.4s, v4.4s, v3.4s
	uzp1 v7.4s, v1.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	dup v1.4s, v3.s[1]
	uzp2 v16.4s, v4.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v0.s[3], v3.s[0]
	mov v7.s[2], v3.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q0, q16, [x0]
	str q7, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:285
		}
	ret
