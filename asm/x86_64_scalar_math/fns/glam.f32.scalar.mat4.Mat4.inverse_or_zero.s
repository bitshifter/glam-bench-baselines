.section .text.<glam::f32::scalar::mat4::Mat4>::inverse_or_zero,"ax",@progbits
	.globl	<glam::f32::scalar::mat4::Mat4>::inverse_or_zero
	.p2align	4
.type	<glam::f32::scalar::mat4::Mat4>::inverse_or_zero,@function
<glam::f32::scalar::mat4::Mat4>::inverse_or_zero:
		// src/f32/scalar/mat4.rs:771
		pub fn inverse_or_zero(&self) -> Self {
	.cfi_startproc
	sub rsp, 296
	.cfi_def_cfa_offset 304
	mov rax, rdi
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	movss xmm11, dword ptr [rsi + 32]
	movss xmm1, dword ptr [rsi + 44]
		// src/f32/scalar/mat4.rs:671
		let (m30, m31, m32, m33) = self.w_axis.into();
	movss xmm8, dword ptr [rsi + 48]
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	movsd xmm13, qword ptr [rsi + 20]
	movaps xmm10, xmm13
	shufps xmm10, xmm13, 85
		// src/f32/scalar/mat4.rs:671
		let (m30, m31, m32, m33) = self.w_axis.into();
	movsd xmm3, qword ptr [rsi + 52]
	movss xmm2, dword ptr [rsi + 60]
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	movaps xmm0, xmm1
	mulss xmm0, xmm3
		// src/f32/scalar/mat4.rs:685
		let coef12 = m20 * m33 - m30 * m23;
	movaps xmm7, xmm11
	mulss xmm7, xmm2
	movaps xmmword ptr [rsp - 96], xmm1
	mulss xmm1, xmm8
	subss xmm7, xmm1
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	movsd xmm1, qword ptr [rsi + 36]
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	movaps xmm15, xmm1
	movaps xmmword ptr [rsp + 48], xmm2
	mulss xmm15, xmm2
	subss xmm15, xmm0
		// src/f32/scalar/mat4.rs:681
		let coef08 = m21 * m32 - m31 * m22;
	movsd xmm9, qword ptr [rsi + 56]
	mulps xmm9, xmm1
	movsd xmm0, qword ptr [rsi + 40]
	mulps xmm0, xmm3
	subps xmm9, xmm0
	movaps xmm2, xmm9
	shufps xmm2, xmm9, 85
	movaps xmmword ptr [rsp - 80], xmm11
		// src/f32/scalar/mat4.rs:693
		let coef20 = m20 * m31 - m30 * m21;
	shufps xmm11, xmm11, 0
	movaps xmmword ptr [rsp + 208], xmm11
	movaps xmmword ptr [rsp + 16], xmm3
	mulps xmm11, xmm3
	movaps xmmword ptr [rsp - 128], xmm8
	shufps xmm8, xmm8, 0
	movaps xmmword ptr [rsp - 64], xmm1
	movaps xmm0, xmm1
	mulps xmm0, xmm8
	subps xmm11, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm1, xmm13
	mulss xmm1, xmm2
	movaps xmm0, xmm10
	mulss xmm0, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm1, xmm0
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	movss xmm0, dword ptr [rsi + 28]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm6, xmm0
	mulss xmm6, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm6, xmm1
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	movss xmm1, dword ptr [rsi + 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm3, xmm1
	movaps xmmword ptr [rsp + 256], xmm2
	mulss xmm3, xmm2
	movaps xmm2, xmm10
	mulss xmm2, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm3, xmm2
		// src/f32/scalar/mat4.rs:693
		let coef20 = m20 * m31 - m30 * m21;
	movaps xmm5, xmm11
	shufps xmm5, xmm11, 85
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm2, xmm0
	movaps xmmword ptr [rsp + 224], xmm5
	mulss xmm2, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm2, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm3, xmm1
	mulss xmm3, xmm15
	movaps xmm5, xmm13
	movaps xmmword ptr [rsp + 32], xmm7
	mulss xmm5, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm3, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm4, xmm0
	mulss xmm4, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm4, xmm3
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	movss xmm14, dword ptr [rsi]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm3, xmm14
	movaps xmmword ptr [rsp - 112], xmm1
	unpcklps xmm3, xmm1
	movaps xmm12, xmm9
	shufps xmm12, xmm9, 0
	movaps xmmword ptr [rsp + 272], xmm6
	movss xmm12, xmm6
	mulps xmm12, xmm3
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	movsd xmm6, qword ptr [rsi + 4]
	movaps xmm3, xmm6
	shufps xmm3, xmm6, 85
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm10, xmm11
	movaps xmmword ptr [rsp], xmm3
	movaps xmmword ptr [rsp + 192], xmm4
	mulss xmm3, xmm4
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	unpcklps xmm3, xmm10
	movaps xmmword ptr [rsp - 16], xmm6
	movaps xmmword ptr [rsp - 32], xmm13
	unpcklps xmm6, xmm13
	movaps xmm7, xmm11
	movss xmm7, xmm2
	mulps xmm7, xmm6
	subps xmm12, xmm7
	addps xmm12, xmm3
	movaps xmm6, xmm12
	shufps xmm6, xmm12, 85
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	movss xmm13, dword ptr [rsi + 12]
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	movaps xmm3, xmm13
	movaps xmmword ptr [rsp + 240], xmm6
	mulss xmm3, xmm6
	subss xmm12, xmm3
	xorps xmm3, xmm3
		// src/f32/scalar/mat4.rs:735
		if dot1 == 0.0 {
	ucomiss xmm12, xmm3
	xorps xmm6, xmm6
	xorps xmm10, xmm10
	xorps xmm3, xmm3
	xorps xmm7, xmm7
	jne .LBB4_1
	jnp .LBB4_2
.LBB4_1:
	movaps xmm1, xmmword ptr [rsp + 16]
	movaps xmm6, xmm1
	shufps xmm6, xmm1, 225
	movaps xmm4, xmmword ptr [rsp - 32]
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	mulps xmm6, xmm4
	movaps xmm3, xmm6
	shufps xmm3, xmm6, 85
	subss xmm6, xmm3
	movaps xmmword ptr [rsp + 176], xmm6
	movaps xmm10, xmmword ptr [rsp - 112]
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	movaps xmm7, xmm10
	shufps xmm7, xmm10, 0
	movaps xmmword ptr [rsp + 80], xmm7
	mulps xmm7, xmm1
	mulps xmm8, xmm4
	subps xmm7, xmm8
	movaps xmmword ptr [rsp + 160], xmm7
	movaps xmm1, xmmword ptr [rsp - 16]
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	movaps xmm3, xmm1
	movaps xmm5, xmm1
	shufps xmm3, xmm1, 225
	movaps xmmword ptr [rsp - 48], xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm1, xmm14
	mulss xmm1, xmm6
	mulps xmm3, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm6, xmm3
	shufps xmm6, xmm3, 85
	subss xmm1, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm1, xmm3
	movaps xmmword ptr [rsp + 144], xmm1
		// src/f32/scalar/mat4.rs:687
		let coef15 = m10 * m23 - m20 * m13;
	movaps xmm7, xmm10
	movaps xmm4, xmmword ptr [rsp - 96]
	mulss xmm7, xmm4
	movaps xmm3, xmmword ptr [rsp - 80]
	mulss xmm3, xmm0
	subss xmm7, xmm3
	movaps xmmword ptr [rsp + 128], xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm3, xmm14
	mulss xmm3, xmm15
	movaps xmm6, xmm5
	mulss xmm6, dword ptr [rsp + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm3, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm1, xmm13
	mulss xmm1, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm1, xmm3
	movaps xmmword ptr [rsp - 80], xmm1
	movaps xmmword ptr [rsp + 64], xmm13
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	mulss xmm10, dword ptr [rsp + 48]
	movaps xmm1, xmmword ptr [rsp - 128]
	mulss xmm1, xmm0
	subss xmm10, xmm1
	movaps xmmword ptr [rsp - 112], xmm10
		// src/f32/scalar/mat4.rs:675
		let coef03 = m12 * m23 - m22 * m13;
	shufps xmm4, xmm4, 0
	movaps xmm8, xmmword ptr [rsp - 32]
	mulps xmm4, xmm8
	shufps xmm0, xmm0, 0
	movaps xmm3, xmm0
	movaps xmm1, xmmword ptr [rsp - 64]
	mulps xmm3, xmm1
	subps xmm4, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm3, xmm5
	mulss xmm3, xmm7
	movaps xmm6, xmm14
	mulss xmm6, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm6, xmm3
	movaps xmm10, xmmword ptr [rsp - 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm3, xmm10
	mulps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm7, xmm3
	shufps xmm7, xmm3, 85
	subss xmm7, xmm3
	movaps xmm5, xmm1
	shufps xmm5, xmm1, 225
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	mulps xmm5, xmm8
	movaps xmm3, xmm5
	shufps xmm3, xmm5, 85
	subss xmm5, xmm3
	movaps xmmword ptr [rsp - 128], xmm5
	movaps xmmword ptr [rsp + 112], xmm2
	movaps xmm13, xmm14
	movaps xmm14, xmmword ptr [rsp + 64]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm2, xmm14
	mulss xmm2, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm2, xmm7
	movaps xmmword ptr [rsp - 96], xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm15, dword ptr [rsp]
	movaps xmm7, xmm10
	movss xmm7, xmm14
	mulps xmm7, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm2, xmm7
	shufps xmm2, xmm7, 85
	subss xmm2, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm2, xmm7
	movaps xmmword ptr [rsp + 96], xmm2
	movaps xmm10, xmmword ptr [rsp + 80]
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	mulps xmm10, xmm1
	movaps xmm1, xmmword ptr [rsp + 208]
	mulps xmm1, xmm8
	subps xmm10, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm1, xmm14
	mulss xmm1, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm1, xmm6
	movaps xmmword ptr [rsp - 64], xmm1
	movaps xmm5, xmmword ptr [rsp + 48]
		// src/f32/scalar/mat4.rs:674
		let coef02 = m12 * m33 - m32 * m13;
	shufps xmm5, xmm5, 0
	mulps xmm5, xmm8
	mulps xmm0, xmmword ptr [rsp + 16]
	subps xmm5, xmm0
	movaps xmm6, xmmword ptr [rsp - 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulps xmm11, xmm6
	movaps xmm2, xmmword ptr [rsp - 128]
	mulss xmm2, xmm13
	mulss xmm9, xmm13
	shufps xmm4, xmm4, 85
	mulss xmm4, xmm13
	movaps xmm15, xmmword ptr [rsp + 192]
	movaps xmm8, xmmword ptr [rsp + 240]
	movaps xmm1, xmmword ptr [rsp + 256]
	mulss xmm1, xmm13
	movaps xmm0, xmm5
	shufps xmm0, xmm5, 85
	mulss xmm0, xmm13
	mulss xmm13, xmm5
	mulps xmm5, xmm6
	mulps xmm6, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm7, xmm6
	shufps xmm7, xmm6, 85
	subss xmm2, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm2, xmm6
	movaps xmmword ptr [rsp - 128], xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm6, xmm11
	shufps xmm6, xmm11, 85
	subss xmm9, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm9, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm6, xmmword ptr [rip + .LCPI4_0]
	xorps xmm8, xmm6
	unpcklps xmm8, xmm9
	movaps xmm2, xmmword ptr [rsp]
	movaps xmm7, xmm2
	movaps xmm3, xmmword ptr [rsp - 112]
	mulss xmm7, xmm3
	mulss xmm3, dword ptr [rsp - 16]
	movaps xmmword ptr [rsp - 112], xmm3
	movaps xmm9, xmmword ptr [rsp + 128]
	mulss xmm9, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm4, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm10, xmm10, 85
	movaps xmm11, xmm14
	mulss xmm10, xmm14
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm10, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm2, dword ptr [rsp + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm1, xmm2
	movaps xmm4, xmmword ptr [rsp + 224]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm4, xmm14
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm4, xmm1
	movaps xmm14, xmmword ptr [rsp + 112]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	xorps xmm14, xmm6
	unpcklps xmm14, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm0, xmm7
	movaps xmm1, xmmword ptr [rsp + 160]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm4, xmm1
	shufps xmm4, xmm1, 85
	mulss xmm4, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm0, xmm4
	movaps xmm9, xmmword ptr [rsp + 144]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	xorps xmm9, xmm6
	movaps xmm7, xmmword ptr [rsp - 80]
	xorps xmm7, xmm6
	movaps xmm2, xmmword ptr [rsp - 96]
	xorps xmm2, xmm6
	movaps xmm3, xmmword ptr [rsp + 96]
	xorps xmm3, xmm6
	movaps xmm4, xmmword ptr [rsp - 64]
	xorps xmm4, xmm6
	xorps xmm0, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm13, dword ptr [rsp - 112]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm1, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm13, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklps xmm13, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm1, xmm5
	shufps xmm1, xmm5, 85
	subss xmm1, xmm5
	movaps xmm4, xmmword ptr [rsp + 176]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm4, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm4, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklps xmm4, xmm2
	movss xmm1, dword ptr [rip + .LCPI4_1]
		// src/f32/scalar/mat4.rs:742
		let rcp_det = 1.0 / dot1;
	divss xmm1, xmm12
	movaps xmm6, xmmword ptr [rsp + 272]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklps xmm6, xmm3
	movlhps xmm6, xmm4
	movaps xmm3, xmm1
	unpcklps xmm3, xmm10
	unpcklps xmm0, xmm1
	movlhps xmm14, xmm0
	shufps xmm3, xmm3, 64
	mulps xmm14, xmm3
	unpcklps xmm15, xmm7
	movlhps xmm15, xmm13
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0
	mulps xmm6, xmm0
	mulps xmm15, xmm0
	unpcklps xmm9, xmm1
	unpcklps xmm1, xmmword ptr [rsp - 128]
	movlhps xmm8, xmm9
	shufps xmm1, xmm1, 64
	mulps xmm8, xmm1
	movaps xmm10, xmm14
	movaps xmm3, xmm15
	movaps xmm7, xmm8
.LBB4_2:
		// src/f32/scalar/mat4.rs:772
		self.inverse_checked::<true>().0
	movups xmmword ptr [rax], xmm6
	movups xmmword ptr [rax + 16], xmm10
	movups xmmword ptr [rax + 32], xmm3
	movups xmmword ptr [rax + 48], xmm7
		// src/f32/scalar/mat4.rs:773
		}
	add rsp, 296
	.cfi_def_cfa_offset 8
	ret
