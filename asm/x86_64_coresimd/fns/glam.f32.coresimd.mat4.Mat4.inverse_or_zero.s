.section .text.<glam::f32::coresimd::mat4::Mat4>::inverse_or_zero,"ax",@progbits
	.globl	<glam::f32::coresimd::mat4::Mat4>::inverse_or_zero
	.prefalign	4, .Lfunc_end4, nop
.type	<glam::f32::coresimd::mat4::Mat4>::inverse_or_zero,@function
<glam::f32::coresimd::mat4::Mat4>::inverse_or_zero:
		// src/f32/coresimd/mat4.rs:856
		pub fn inverse_or_zero(&self) -> Self {
	.cfi_startproc
	mov rax, rdi
		// src/f32/coresimd/mat4.rs:764
		let temp0 = simd_swizzle!(self.y_axis.0, self.x_axis.0, [0, 0, 4, 4]);
	movaps xmm1, xmmword ptr [rsi]
		// src/f32/coresimd/mat4.rs:687
		let swp00 = simd_swizzle!(self.z_axis.0, self.y_axis.0, [2, 2, 6, 6]);
	movaps xmm0, xmmword ptr [rsi + 16]
		// src/f32/coresimd/mat4.rs:684
		let swp0a = simd_swizzle!(self.w_axis.0, self.z_axis.0, [3, 3, 7, 7]);
	movaps xmm10, xmmword ptr [rsi + 32]
	movaps xmm5, xmmword ptr [rsi + 48]
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	movaps xmm8, xmm10
	shufps xmm8, xmm0, 170
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm10
	shufps xmm2, xmm5, 51
	movaps xmm3, xmm5
	shufps xmm3, xmm2, 47
	movaps xmm4, xmm10
	unpckhpd xmm4, xmm5
	movaps xmm2, xmm5
	shufps xmm2, xmm4, 42
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	movaps xmm9, xmm10
	shufps xmm9, xmm0, 255
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	movaps xmm4, xmm8
	mulps xmm4, xmm3
	movaps xmm6, xmm2
	mulps xmm6, xmm9
	subps xmm4, xmm6
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	movaps xmm12, xmm10
	shufps xmm12, xmm0, 85
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	movaps xmm6, xmm10
	shufps xmm6, xmm5, 17
	movaps xmm11, xmm5
	shufps xmm11, xmm6, 37
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	movaps xmm13, xmm11
	mulps xmm13, xmm9
	movaps xmm6, xmm12
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	movaps xmm7, xmm10
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	movlhps xmm10, xmm5
	shufps xmm5, xmm10, 32
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	movaps xmm14, xmm11
	mulps xmm14, xmm8
	mulps xmm9, xmm5
	mulps xmm8, xmm5
	mulps xmm5, xmm12
	movaps xmm10, xmm12
	mulps xmm10, xmm3
	subps xmm10, xmm13
	mulps xmm6, xmm2
	subps xmm6, xmm14
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	shufps xmm7, xmm0, 0
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	mulps xmm3, xmm7
	subps xmm3, xmm9
	mulps xmm2, xmm7
	subps xmm2, xmm8
	mulps xmm7, xmm11
	subps xmm7, xmm5
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	movaps xmm11, xmm0
	movlhps xmm11, xmm1
	shufps xmm11, xmm1, 8
	movaps xmm12, xmm0
	shufps xmm12, xmm1, 17
	shufps xmm12, xmm1, 88
	movaps xmm5, xmm0
	unpckhpd xmm5, xmm1
	shufps xmm5, xmm1, 168
	shufps xmm0, xmm1, 51
	shufps xmm0, xmm1, 248
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	movaps xmm9, xmm12
	mulps xmm9, xmm4
	movaps xmm8, xmm5
	mulps xmm8, xmm10
	subps xmm9, xmm8
	movaps xmm8, xmm0
	mulps xmm8, xmm6
	addps xmm8, xmm9
	movaps xmm13, xmmword ptr [rip + .LCPI4_0]
	mulps xmm8, xmm13
	mulps xmm4, xmm11
	movaps xmm9, xmm5
	mulps xmm9, xmm3
	subps xmm4, xmm9
	movaps xmm9, xmm0
	mulps xmm9, xmm2
	addps xmm9, xmm4
	movaps xmm4, xmmword ptr [rip + .LCPI4_1]
	mulps xmm9, xmm4
	mulps xmm10, xmm11
	mulps xmm3, xmm12
	subps xmm10, xmm3
	mulps xmm0, xmm7
	addps xmm0, xmm10
	mulps xmm0, xmm13
	mulps xmm11, xmm6
	mulps xmm12, xmm2
	subps xmm11, xmm12
	mulps xmm5, xmm7
	addps xmm5, xmm11
	mulps xmm5, xmm4
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm8
	movlhps xmm2, xmm9
	movaps xmm3, xmm0
	movlhps xmm3, xmm5
	shufps xmm2, xmm3, 136
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	mulps xmm2, xmm1
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	movaps xmm1, xmm2
	unpckhpd xmm1, xmm2
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	addps xmm1, xmm2
		// src/coresimd.rs:224
		dot4_in_x(lhs, rhs)[0]
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 85
	addss xmm2, xmm1
	xorps xmm1, xmm1
		// src/f32/coresimd/mat4.rs:811
		if dot0 == 0.0 {
	ucomiss xmm2, xmm1
	xorps xmm1, xmm1
	xorps xmm3, xmm3
	xorps xmm4, xmm4
	xorps xmm6, xmm6
	jne .LBB4_1
	jnp .LBB4_2
.LBB4_1:
	movss xmm1, dword ptr [rip + .LCPI4_2]
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:975
		1.0 / self
	divss xmm1, xmm2
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/vector.rs:153
		unsafe { core::intrinsics::simd::simd_splat(value) }
	shufps xmm1, xmm1, 0
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	mulps xmm8, xmm1
	mulps xmm9, xmm1
	mulps xmm0, xmm1
	mulps xmm5, xmm1
	movaps xmm1, xmm5
	movaps xmm3, xmm0
	movaps xmm4, xmm9
	movaps xmm6, xmm8
.LBB4_2:
		// src/f32/coresimd/mat4.rs:857
		self.inverse_checked::<true>().0
	movaps xmmword ptr [rax], xmm6
	movaps xmmword ptr [rax + 16], xmm4
	movaps xmmword ptr [rax + 32], xmm3
	movaps xmmword ptr [rax + 48], xmm1
		// src/f32/coresimd/mat4.rs:858
		}
	ret
