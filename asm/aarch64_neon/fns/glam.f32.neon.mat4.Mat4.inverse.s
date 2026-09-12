.section .text.<glam::f32::neon::mat4::Mat4>::inverse,"ax",@progbits
	.globl	<glam::f32::neon::mat4::Mat4>::inverse
	.p2align	2
.type	<glam::f32::neon::mat4::Mat4>::inverse,@function
<glam::f32::neon::mat4::Mat4>::inverse:
	.cfi_startproc
		// src/f32/neon/mat4.rs:694
		let swp0a = swizzle3377(self.w_axis.0, self.z_axis.0);
	ldp q4, q3, [x0, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmov v0.4s, #1.00000000
		// src/f32/neon/mat4.rs:697
		let swp00 = swizzle2266(self.z_axis.0, self.y_axis.0);
	ldp q1, q2, [x0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	dup v6.4s, v3.s[3]
	dup v16.4s, v3.s[2]
	dup v18.4s, v3.s[1]
	uzp1 v5.4s, v4.4s, v2.4s
	uzp2 v7.4s, v4.4s, v2.4s
	zip1 v17.4s, v4.4s, v2.4s
	dup v3.4s, v3.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	dup v20.4s, v1.s[1]
	dup v23.4s, v1.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	mov v6.s[3], v4.s[3]
	mov v16.s[3], v4.s[2]
	mov v18.s[3], v4.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fneg v0.2d, v0.2d
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	trn2 v19.4s, v5.4s, v5.4s
	trn2 v7.4s, v7.4s, v7.4s
	zip2 v17.4s, v17.4s, v17.4s
	ext v3.16b, v3.16b, v4.16b, #4
	trn1 v4.4s, v5.4s, v5.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	dup v5.4s, v1.s[0]
	mov v20.s[0], v2.s[1]
	mov v23.s[0], v2.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v21.4s, v19.4s, v6.4s
	fmul v22.4s, v16.4s, v7.4s
	fmul v24.4s, v17.4s, v6.4s
	fmul v25.4s, v18.4s, v7.4s
	fmul v26.4s, v17.4s, v16.4s
	fmul v6.4s, v4.4s, v6.4s
	fmul v7.4s, v3.4s, v7.4s
	fmul v27.4s, v18.4s, v19.4s
	fmul v16.4s, v4.4s, v16.4s
	fmul v19.4s, v3.4s, v19.4s
	fmul v4.4s, v4.4s, v18.4s
	fmul v3.4s, v3.4s, v17.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:64859
		unsafe { simd_sub(a, b) }
	fsub v17.4s, v21.4s, v22.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	mov v5.s[0], v2.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:64859
		unsafe { simd_sub(a, b) }
	fsub v18.4s, v24.4s, v25.4s
	fsub v6.4s, v6.4s, v7.4s
	fsub v21.4s, v26.4s, v27.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	dup v7.4s, v1.s[3]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:64859
		unsafe { simd_sub(a, b) }
	fsub v16.4s, v16.4s, v19.4s
	fsub v3.4s, v4.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v4.4s, v17.4s, v20.4s
	fmul v17.4s, v5.4s, v17.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v2.16b, v2.16b, v7.16b, #12
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v7.4s, v18.4s, v23.4s
	fmul v18.4s, v5.4s, v18.4s
	fmul v19.4s, v6.4s, v23.4s
	fmul v6.4s, v6.4s, v20.4s
	fmul v5.4s, v5.4s, v21.4s
	fmul v20.4s, v16.4s, v20.4s
	fmul v21.4s, v21.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:64859
		unsafe { simd_sub(a, b) }
	fsub v4.4s, v4.4s, v7.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v7.4s, v16.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:64859
		unsafe { simd_sub(a, b) }
	fsub v16.4s, v17.4s, v19.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmov v17.4s, #-1.00000000
	fmul v2.4s, v3.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:64859
		unsafe { simd_sub(a, b) }
	fsub v6.4s, v18.4s, v6.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v3.4s, v3.4s, v23.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:64859
		unsafe { simd_sub(a, b) }
	fsub v5.4s, v5.4s, v20.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v4.4s, v21.4s, v4.4s
	fadd v7.4s, v7.4s, v16.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fneg v16.2d, v17.2d
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v2.4s, v2.4s, v6.4s
	fadd v3.4s, v3.4s, v5.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v4.4s, v4.4s, v0.4s
	fmul v5.4s, v7.4s, v16.4s
	fmul v0.4s, v2.4s, v0.4s
	fmul v2.4s, v3.4s, v16.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	uzp1 v3.4s, v4.4s, v5.4s
	uzp1 v6.4s, v0.4s, v2.4s
	uzp1 v3.4s, v3.4s, v6.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v1.4s, v3.4s
	fmov s3, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:597
		unsafe { _vaddvq_f32(a) }
	faddp v1.4s, v1.4s, v1.4s
	faddp s1, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:968
		1.0 / self
	fdiv s1, s3, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v3.4s, v4.4s, v1.s[0]
	fmul v4.4s, v5.4s, v1.s[0]
	fmul v0.4s, v0.4s, v1.s[0]
	fmul v1.4s, v2.4s, v1.s[0]
		// src/f32/neon/mat4.rs:852
		self.inverse_checked::<false>().0
	stp q3, q4, [x8]
	stp q0, q1, [x8, #32]
		// src/f32/neon/mat4.rs:853
		}
	ret
6.4s, v3.4s
	fadd v1.4s, v1.4s, v3.4s
	fmov s3, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:968
		1.0 / self
	fdiv s1, s3, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v3.4s, v4.4s, v1.s[0]
	fmul v4.4s, v5.4s, v1.s[0]
	fmul v0.4s, v0.4s, v1.s[0]
	fmul v1.4s, v2.4s, v1.s[0]
		// src/f32/neon/mat4.rs:862
		self.inverse_checked::<false>().0
	stp q3, q4, [x8]
	stp q0, q1, [x8, #32]
		// src/f32/neon/mat4.rs:863
		}
	ret
