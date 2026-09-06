.section .text.<glam::f32::sse2::mat4::Mat4>::try_inverse,"ax",@progbits
	.globl	<glam::f32::sse2::mat4::Mat4>::try_inverse
	.p2align	4
.type	<glam::f32::sse2::mat4::Mat4>::try_inverse,@function
<glam::f32::sse2::mat4::Mat4>::try_inverse:
		// src/f32/sse2/mat4.rs:861
		pub fn try_inverse(&self) -> Option<Self> {
	.cfi_startproc
	mov rax, rdi
		// src/f32/sse2/mat4.rs:779
		let temp0 = _mm_shuffle_ps(self.y_axis.0, self.x_axis.0, 0b00_00_00_00);
	movaps xmm1, xmmword ptr [rsi]
		// src/f32/sse2/mat4.rs:702
		let swp00 = _mm_shuffle_ps(self.z_axis.0, self.y_axis.0, 0b10_10_10_10);
	movaps xmm0, xmmword ptr [rsi + 16]
		// src/f32/sse2/mat4.rs:699
		let swp0a = _mm_shuffle_ps(self.w_axis.0, self.z_axis.0, 0b11_11_11_11);
	movaps xmm10, xmmword ptr [rsi + 32]
	movaps xmm7, xmmword ptr [rsi + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm8, xmm10
	shufps xmm8, xmm0, 170
	movaps xmm2, xmm10
	shufps xmm2, xmm7, 51
	movaps xmm3, xmm7
	shufps xmm3, xmm2, 47
	movaps xmm4, xmm10
	unpckhpd xmm4, xmm7
	movaps xmm2, xmm7
	shufps xmm2, xmm4, 42
	movaps xmm9, xmm10
	shufps xmm9, xmm0, 255
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm4, xmm8
	mulps xmm4, xmm3
	movaps xmm5, xmm2
	mulps xmm5, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm4, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm12, xmm10
	shufps xmm12, xmm0, 85
	movaps xmm5, xmm10
	shufps xmm5, xmm7, 17
	movaps xmm11, xmm7
	shufps xmm11, xmm5, 37
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm13, xmm11
	mulps xmm13, xmm9
	movaps xmm5, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm6, xmm10
	movlhps xmm10, xmm7
	shufps xmm7, xmm10, 32
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm14, xmm11
	mulps xmm14, xmm8
	mulps xmm9, xmm7
	mulps xmm8, xmm7
	mulps xmm7, xmm12
	movaps xmm10, xmm12
	mulps xmm10, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm10, xmm13
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm5, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm5, xmm14
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm6, xmm0, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm3, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm2, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm6, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm6, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm11, xmm0
	movlhps xmm11, xmm1
	shufps xmm11, xmm1, 8
	movaps xmm12, xmm0
	shufps xmm12, xmm1, 17
	shufps xmm12, xmm1, 88
	movaps xmm7, xmm0
	unpckhpd xmm7, xmm1
	shufps xmm7, xmm1, 168
	shufps xmm0, xmm1, 51
	shufps xmm0, xmm1, 248
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm9, xmm12
	mulps xmm9, xmm4
	movaps xmm8, xmm7
	mulps xmm8, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm9, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm8, xmm0
	mulps xmm8, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm8, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm13, xmmword ptr [rip + .LCPI4_0]
	mulps xmm8, xmm13
	mulps xmm4, xmm11
	movaps xmm9, xmm7
	mulps xmm9, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm4, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm9, xmm0
	mulps xmm9, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm9, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	movaps xmm4, xmmword ptr [rip + .LCPI4_1]
	mulps xmm9, xmm4
	mulps xmm10, xmm11
	mulps xmm3, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm10, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm0, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm13
	mulps xmm11, xmm5
	mulps xmm12, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:62
		unsafe { simd_sub(a, b) }
	subps xmm11, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm7, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm7, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm7, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm2, xmm8
	movlhps xmm2, xmm9
	movaps xmm3, xmm0
	movlhps xmm3, xmm7
	shufps xmm2, xmm3, 136
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm3, xmm2
	unpckhpd xmm3, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm3, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:188
		($x:expr, $idx:expr $(,)?) => {{ $crate::intrinsics::simd::simd_extract($x, const { $idx }) }};
	movaps xmm1, xmm3
	shufps xmm1, xmm3, 85
	addss xmm1, xmm3
	xorps xmm2, xmm2
		// src/f32/sse2/mat4.rs:826
		if dot0 == 0.0 {
	ucomiss xmm1, xmm2
	jne .LBB4_2
	jp .LBB4_2
	xor ecx, ecx
	mov qword ptr [rax], rcx
	mov qword ptr [rax + 8], 0
		// src/f32/sse2/mat4.rs:868
		}
	ret
.LBB4_2:
	movss xmm2, dword ptr [rip + .LCPI4_2]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:968
		1.0 / self
	divss xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm2, xmm2, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm8, xmm2
	mulps xmm9, xmm2
	mulps xmm0, xmm2
	mulps xmm7, xmm2
		// src/f32/sse2/mat4.rs:864
		Some(m)
	movaps xmmword ptr [rax + 16], xmm8
	movaps xmmword ptr [rax + 32], xmm9
	movaps xmmword ptr [rax + 48], xmm0
	movaps xmmword ptr [rax + 64], xmm7
	mov ecx, 1
	mov qword ptr [rax], rcx
	mov qword ptr [rax + 8], 0
		// src/f32/sse2/mat4.rs:868
		}
	ret
