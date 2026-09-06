.section .text.<glam::f32::coresimd::mat4::Mat4>::inverse,"ax",@progbits
	.globl	<glam::f32::coresimd::mat4::Mat4>::inverse
	.prefalign	4, .Lfunc_end5, nop
.type	<glam::f32::coresimd::mat4::Mat4>::inverse,@function
<glam::f32::coresimd::mat4::Mat4>::inverse:
		// src/f32/coresimd/mat4.rs:839
		pub fn inverse(&self) -> Self {
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
	movaps xmm9, xmmword ptr [rsi + 32]
	movaps xmm7, xmmword ptr [rsi + 48]
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	movaps xmm8, xmm9
	shufps xmm8, xmm0, 170
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm9
	shufps xmm2, xmm7, 51
	movaps xmm3, xmm7
	shufps xmm3, xmm2, 47
	movaps xmm4, xmm9
	unpckhpd xmm4, xmm7
	movaps xmm2, xmm7
	shufps xmm2, xmm4, 42
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	movaps xmm10, xmm9
	shufps xmm10, xmm0, 255
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	movaps xmm4, xmm8
	mulps xmm4, xmm3
	movaps xmm5, xmm2
	mulps xmm5, xmm10
	subps xmm4, xmm5
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	movaps xmm12, xmm9
	shufps xmm12, xmm0, 85
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	movaps xmm5, xmm9
	shufps xmm5, xmm7, 17
	movaps xmm11, xmm7
	shufps xmm11, xmm5, 37
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	movaps xmm13, xmm11
	mulps xmm13, xmm10
	movaps xmm5, xmm12
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	movaps xmm6, xmm9
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	movlhps xmm9, xmm7
	shufps xmm7, xmm9, 32
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	movaps xmm14, xmm11
	mulps xmm14, xmm8
	mulps xmm10, xmm7
	mulps xmm8, xmm7
	mulps xmm7, xmm12
	movaps xmm9, xmm12
	mulps xmm9, xmm3
	subps xmm9, xmm13
	mulps xmm5, xmm2
	subps xmm5, xmm14
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	shufps xmm6, xmm0, 0
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	mulps xmm3, xmm6
	subps xmm3, xmm10
	mulps xmm2, xmm6
	subps xmm2, xmm8
	mulps xmm6, xmm11
	subps xmm6, xmm7
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:88
		core::intrinsics::simd::simd_shuffle(
	movaps xmm10, xmm0
	movlhps xmm10, xmm1
	shufps xmm10, xmm1, 8
	movaps xmm12, xmm0
	shufps xmm12, xmm1, 17
	shufps xmm12, xmm1, 88
	movaps xmm7, xmm0
	unpckhpd xmm7, xmm1
	shufps xmm7, xmm1, 168
	shufps xmm0, xmm1, 51
	shufps xmm0, xmm1, 248
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	movaps xmm11, xmm12
	mulps xmm11, xmm4
	movaps xmm8, xmm7
	mulps xmm8, xmm9
	subps xmm11, xmm8
	movaps xmm8, xmm0
	mulps xmm8, xmm5
	addps xmm8, xmm11
	movaps xmm13, xmmword ptr [rip + .LCPI5_0]
	mulps xmm8, xmm13
	mulps xmm4, xmm10
	movaps xmm11, xmm7
	mulps xmm11, xmm3
	subps xmm4, xmm11
	movaps xmm11, xmm0
	mulps xmm11, xmm2
	addps xmm11, xmm4
	movaps xmm4, xmmword ptr [rip + .LCPI5_1]
	mulps xmm11, xmm4
	mulps xmm9, xmm10
	mulps xmm3, xmm12
	subps xmm9, xmm3
	mulps xmm0, xmm6
	addps xmm0, xmm9
	mulps xmm0, xmm13
	mulps xmm10, xmm5
	mulps xmm12, xmm2
	subps xmm10, xmm12
	mulps xmm7, xmm6
	addps xmm7, xmm10
	mulps xmm7, xmm4
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/swizzle.rs:126
		core::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm8
	movlhps xmm2, xmm11
	movaps xmm3, xmm0
	movlhps xmm3, xmm7
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
	movss xmm1, dword ptr [rip + .LCPI5_2]
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:975
		1.0 / self
	divss xmm1, xmm2
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/vector.rs:153
		unsafe { core::intrinsics::simd::simd_splat(value) }
	shufps xmm1, xmm1, 0
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../portable-simd/crates/core_simd/src/ops.rs:38
		unsafe { core::intrinsics::simd::$simd_call($lhs, $rhs) }
	mulps xmm8, xmm1
	mulps xmm11, xmm1
	mulps xmm0, xmm1
	mulps xmm1, xmm7
		// src/f32/coresimd/mat4.rs:840
		self.inverse_checked::<false>().0
	movaps xmmword ptr [rdi], xmm8
	movaps xmmword ptr [rdi + 16], xmm11
	movaps xmmword ptr [rdi + 32], xmm0
	movaps xmmword ptr [rdi + 48], xmm1
		// src/f32/coresimd/mat4.rs:841
		}
	ret
