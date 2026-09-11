.section .text.<glam::f32::coresimd::mat4::Mat4>::try_inverse,"ax",@progbits
	.globl	<glam::f32::coresimd::mat4::Mat4>::try_inverse
	.p2align	2
.type	<glam::f32::coresimd::mat4::Mat4>::try_inverse,@function
<glam::f32::coresimd::mat4::Mat4>::try_inverse:
	.cfi_startproc
		// src/f32/coresimd/mat4.rs:686
		let swp0a = simd_swizzle!(self.w_axis.0, self.z_axis.0, [3, 3, 7, 7]);
	ldp q4, q3, [x0, #32]
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	fmov v0.4s, #1.00000000
		// src/f32/coresimd/mat4.rs:689
		let swp00 = simd_swizzle!(self.z_axis.0, self.y_axis.0, [2, 2, 6, 6]);
	ldp q1, q2, [x0]
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	dup v6.4s, v3.s[3]
	dup v16.4s, v3.s[2]
	dup v18.4s, v3.s[1]
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	uzp1 v5.4s, v4.4s, v2.4s
	uzp2 v7.4s, v4.4s, v2.4s
	zip1 v17.4s, v4.4s, v2.4s
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	dup v3.4s, v3.s[0]
	dup v20.4s, v1.s[1]
	dup v23.4s, v1.s[2]
	mov v6.s[3], v4.s[3]
	mov v16.s[3], v4.s[2]
	mov v18.s[3], v4.s[1]
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	trn2 v19.4s, v5.4s, v5.4s
	trn2 v7.4s, v7.4s, v7.4s
	zip2 v17.4s, v17.4s, v17.4s
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	ext v3.16b, v3.16b, v4.16b, #4
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	trn1 v4.4s, v5.4s, v5.4s
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	dup v5.4s, v1.s[0]
	mov v20.s[0], v2.s[1]
	mov v23.s[0], v2.s[2]
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
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
	fsub v17.4s, v21.4s, v22.4s
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	mov v5.s[0], v2.s[0]
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	fsub v18.4s, v24.4s, v25.4s
	fsub v6.4s, v6.4s, v7.4s
	fsub v21.4s, v26.4s, v27.4s
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	dup v7.4s, v1.s[3]
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	fsub v16.4s, v16.4s, v19.4s
	fsub v3.4s, v4.4s, v3.4s
	fmul v4.4s, v20.4s, v17.4s
	fmul v17.4s, v5.4s, v17.4s
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	ext v2.16b, v2.16b, v7.16b, #12
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	fmul v7.4s, v23.4s, v18.4s
	fmul v18.4s, v5.4s, v18.4s
	fmul v19.4s, v23.4s, v6.4s
	fmul v6.4s, v20.4s, v6.4s
	fmul v5.4s, v5.4s, v21.4s
	fmul v20.4s, v20.4s, v16.4s
	fmul v21.4s, v2.4s, v21.4s
	fsub v4.4s, v4.4s, v7.4s
	fmul v7.4s, v2.4s, v16.4s
	fsub v16.4s, v17.4s, v19.4s
	fmov v17.4s, #-1.00000000
	fmul v2.4s, v2.4s, v3.4s
	fsub v6.4s, v18.4s, v6.4s
	fmul v3.4s, v23.4s, v3.4s
	fsub v5.4s, v5.4s, v20.4s
	fneg v18.2d, v0.2d
	fadd v4.4s, v21.4s, v4.4s
	fadd v7.4s, v7.4s, v16.4s
	fneg v16.2d, v17.2d
	fadd v6.4s, v2.4s, v6.4s
	fadd v5.4s, v3.4s, v5.4s
	fmul v0.4s, v4.4s, v18.4s
	fmul v2.4s, v7.4s, v16.4s
	fmul v3.4s, v6.4s, v18.4s
	fmul v4.4s, v5.4s, v16.4s
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	uzp1 v5.4s, v0.4s, v2.4s
	uzp1 v6.4s, v3.4s, v4.4s
	uzp1 v5.4s, v5.4s, v6.4s
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	fmul v1.4s, v1.4s, v5.4s
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	dup v5.4s, v1.s[1]
	dup v6.4s, v1.s[2]
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	fadd v5.4s, v1.4s, v5.4s
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	dup v1.4s, v1.s[3]
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	fadd v5.4s, v6.4s, v5.4s
	fadd v1.4s, v1.4s, v5.4s
		// src/f32/coresimd/mat4.rs:817
		if dot0 == 0.0 {
	fcmp s1, #0.0
	b.ne .LBB3_2
	stp xzr, xzr, [x8]
		// src/f32/coresimd/mat4.rs:858
		}
	ret
.LBB3_2:
	fmov s5, #1.00000000
	mov w9, #1
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:975
		1.0 / self
	fdiv s1, s5, s1
		// ~/.rustup/toolchains/nightly-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	fmul v0.4s, v0.4s, v1.s[0]
	fmul v2.4s, v2.4s, v1.s[0]
	fmul v3.4s, v3.4s, v1.s[0]
	fmul v1.4s, v4.4s, v1.s[0]
		// src/f32/coresimd/mat4.rs:854
		Some(m)
	stp q0, q2, [x8, #16]
	stp q3, q1, [x8, #48]
	stp x9, xzr, [x8]
		// src/f32/coresimd/mat4.rs:858
		}
	ret
