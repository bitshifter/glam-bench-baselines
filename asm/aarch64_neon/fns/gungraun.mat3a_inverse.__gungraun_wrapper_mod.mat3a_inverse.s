.section .text.gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse,@function
gungraun::mat3a_inverse::__gungraun_wrapper_mod::mat3a_inverse:
	.cfi_startproc
		// src/f32/neon/mat3a.rs:712
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldp q2, q1, [x1, #16]
	fmov s0, #1.00000000
		// src/f32/neon/mat3a.rs:713
		let det = self.x_axis.dot(tmp0);
	ldr q3, [x1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v4.16b, v2.16b, v2.16b, #4
	uzp1 v5.4s, v1.4s, v1.4s
	uzp1 v6.4s, v2.4s, v2.4s
	ext v7.16b, v1.16b, v1.16b, #4
	mov v4.s[2], v2.s[0]
	ext v5.16b, v5.16b, v1.16b, #12
	ext v2.16b, v6.16b, v2.16b, #12
	mov v7.s[2], v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v4.4s, v5.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15008
		unsafe { simd_fma(b, c, a) }
	fmls v1.4s, v7.4s, v2.4s
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v6.4s, v3.4s, v1.4s
	faddp s16, v6.2s
	mov s6, v6.s[2]
	fadd s6, s6, s16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	uzp1 v16.4s, v3.4s, v3.4s
		// src/f32/neon/mat3a.rs:723
		let inv_det = Vec3A::splat(1.0 / det);
	fdiv s0, s0, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v6.16b, v3.16b, v3.16b, #4
	ext v16.16b, v16.16b, v3.16b, #12
	mov v6.s[2], v3.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v3.4s, v7.4s, v16.4s
	fmul v2.4s, v2.4s, v6.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15008
		unsafe { simd_fma(b, c, a) }
	fmls v3.4s, v6.4s, v5.4s
	fmls v2.4s, v4.4s, v16.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v1.4s, v0.s[0]
	fmul v3.4s, v3.4s, v0.s[0]
	fmul v0.4s, v2.4s, v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v4.16b, v1.16b
	mov v4.d[1], v3.d[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	mov v3.s[0], v1.s[2]
	dup v2.4s, v0.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	uzp1 v1.4s, v4.4s, v0.4s
	uzp1 v3.4s, v3.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	uzp2 v2.4s, v4.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v1.s[3], v0.s[0]
	mov v3.s[2], v0.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q1, q2, [x0]
	str q3, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:278
		}
	ret
