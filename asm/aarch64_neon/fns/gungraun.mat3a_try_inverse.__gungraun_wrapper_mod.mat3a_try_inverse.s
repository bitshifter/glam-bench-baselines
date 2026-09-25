.section .text.gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse,@function
gungraun::mat3a_try_inverse::__gungraun_wrapper_mod::mat3a_try_inverse:
	.cfi_startproc
		// src/f32/neon/mat3a.rs:712
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldp q4, q6, [x1, #16]
		// src/f32/neon/mat3a.rs:713
		let det = self.x_axis.dot(tmp0);
	ldr q2, [x1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v0.16b, v4.16b, v4.16b, #4
	uzp1 v1.4s, v6.4s, v6.4s
	uzp1 v7.4s, v4.4s, v4.4s
	ext v5.16b, v6.16b, v6.16b, #4
	mov v0.s[2], v4.s[0]
	ext v3.16b, v1.16b, v6.16b, #12
	ext v4.16b, v7.16b, v4.16b, #12
	mov v5.s[2], v6.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v0.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15008
		unsafe { simd_fma(b, c, a) }
	fmls v1.4s, v5.4s, v4.4s
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v6.4s, v2.4s, v1.4s
	faddp s7, v6.2s
	mov s6, v6.s[2]
	fadd s6, s6, s7
		// src/f32/neon/mat3a.rs:715
		if det == 0.0 {
	fcmp s6, #0.0
	b.ne .LBB240_2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp xzr, xzr, [x0]
	stp q0, q2, [x0, #16]
	str q1, [x0, #48]
	//APP
	//NO_APP
		// benches/gungraun.rs:298
		}
	ret
.LBB240_2:
	fmov s7, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	uzp1 v16.4s, v2.4s, v2.4s
	mov w8, #1
		// src/f32/neon/mat3a.rs:723
		let inv_det = Vec3A::splat(1.0 / det);
	fdiv s6, s7, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v7.16b, v16.16b, v2.16b, #12
	ext v16.16b, v2.16b, v2.16b, #4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v5.4s, v5.4s, v7.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v16.s[2], v2.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15008
		unsafe { simd_fma(b, c, a) }
	fmls v5.4s, v16.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v2.4s, v4.4s, v16.4s
	fmul v1.4s, v1.4s, v6.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:15008
		unsafe { simd_fma(b, c, a) }
	fmls v2.4s, v0.4s, v7.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v3.4s, v5.4s, v6.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v4.16b, v1.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v5.4s, v2.4s, v6.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v4.d[1], v3.d[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	mov v3.s[0], v1.s[2]
	dup v2.4s, v5.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	uzp1 v0.4s, v4.4s, v5.4s
	uzp1 v1.4s, v3.4s, v5.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	uzp2 v2.4s, v4.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v0.s[3], v5.s[0]
	mov v1.s[2], v5.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp x8, xzr, [x0]
	stp q0, q2, [x0, #16]
	str q1, [x0, #48]
	//APP
	//NO_APP
		// benches/gungraun.rs:298
		}
	ret
