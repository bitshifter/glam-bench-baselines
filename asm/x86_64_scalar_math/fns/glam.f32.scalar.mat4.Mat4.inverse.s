.section .text.<glam::f32::scalar::mat4::Mat4>::inverse,"ax",@progbits
	.globl	<glam::f32::scalar::mat4::Mat4>::inverse
	.p2align	4
.type	<glam::f32::scalar::mat4::Mat4>::inverse,@function
<glam::f32::scalar::mat4::Mat4>::inverse:
		// src/f32/scalar/mat4.rs:754
		pub fn inverse(&self) -> Self {
	.cfi_startproc
	sub rsp, 264
	.cfi_def_cfa_offset 272
	mov rax, rdi
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	movsd xmm1, qword ptr [rsi + 24]
	movss xmm0, dword ptr [rsi + 28]
	movaps xmmword ptr [rsp - 112], xmm0
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	movsd xmm7, qword ptr [rsi + 40]
		// src/f32/scalar/mat4.rs:671
		let (m30, m31, m32, m33) = self.w_axis.into();
	movsd xmm6, qword ptr [rsi + 56]
	movss xmm14, dword ptr [rsi + 60]
		// src/f32/scalar/mat4.rs:674
		let coef02 = m12 * m33 - m32 * m13;
	movaps xmm2, xmm1
	mulss xmm2, xmm14
	movaps xmmword ptr [rsp - 80], xmm14
	mulss xmm0, xmm6
	subss xmm2, xmm0
	movaps xmmword ptr [rsp + 240], xmm2
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	movaps xmm0, xmm7
	unpcklps xmm0, xmm1
	movaps xmm5, xmm7
	shufps xmm5, xmm6, 17
	shufps xmm5, xmm6, 226
	movaps xmm10, xmm1
	movaps xmm4, xmm1
	shufps xmm10, xmm7, 17
	shufps xmm10, xmm7, 226
	movaps xmm2, xmm10
		// src/f32/scalar/mat4.rs:671
		let (m30, m31, m32, m33) = self.w_axis.into();
	movsd xmm12, qword ptr [rsi + 48]
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	movsd xmm9, qword ptr [rsi + 32]
		// src/f32/scalar/mat4.rs:685
		let coef12 = m20 * m33 - m30 * m23;
	movaps xmm3, xmm12
	unpcklps xmm3, xmm9
	mulps xmm10, xmm3
		// src/f32/scalar/mat4.rs:689
		let coef16 = m20 * m32 - m30 * m22;
	mulps xmm3, xmm0
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	mulps xmm0, xmm5
	movaps xmm8, xmm6
	unpcklps xmm8, xmm7
	mulps xmm2, xmm8
	subps xmm0, xmm2
	movaps xmmword ptr [rsp + 144], xmm0
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	movaps xmm11, xmm12
	shufps xmm11, xmm12, 225
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	movaps xmm15, xmm9
	movaps xmm13, xmm9
	movaps xmmword ptr [rsp - 128], xmm9
		// src/f32/scalar/mat4.rs:693
		let coef20 = m20 * m31 - m30 * m21;
	mulps xmm9, xmm11
	movaps xmm2, xmm9
	shufps xmm2, xmm9, 85
	subps xmm9, xmm2
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	movsd xmm1, qword ptr [rsi + 8]
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	movaps xmm2, xmm1
	movaps xmmword ptr [rsp + 128], xmm1
	shufps xmm2, xmm1, 85
	movaps xmm0, xmm2
	movaps xmmword ptr [rsp - 48], xmm2
	movaps xmm2, xmm4
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	shufps xmm2, xmm4, 0
	movaps xmmword ptr [rsp - 16], xmm2
	movaps xmm4, xmmword ptr [rsp - 112]
	movss xmm2, xmm4
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	shufps xmm6, xmm6, 0
	movaps xmmword ptr [rsp - 64], xmm6
	movss xmm6, xmm14
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	shufps xmm13, xmm13, 85
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm0, xmm9
	movaps xmmword ptr [rsp + 224], xmm0
	mulss xmm1, xmm9
	movaps xmmword ptr [rsp + 208], xmm1
	shufps xmm9, xmm9, 0
	mulps xmm9, xmm2
	movaps xmmword ptr [rsp + 192], xmm9
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	mulps xmm2, xmm13
	movaps xmmword ptr [rsp - 96], xmm2
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	mulps xmm13, xmm6
	movaps xmm4, xmm13
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	shufps xmm15, xmm15, 225
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	movsd xmm14, qword ptr [rsi + 16]
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	mulps xmm15, xmm14
	movaps xmm2, xmm15
	shufps xmm2, xmm15, 85
	subps xmm15, xmm2
	movaps xmmword ptr [rsp + 160], xmm15
	movaps xmm0, xmmword ptr [rsp - 128]
		// src/f32/scalar/mat4.rs:685
		let coef12 = m20 * m33 - m30 * m23;
	unpcklps xmm0, xmm14
	mulps xmm5, xmm0
		// src/f32/scalar/mat4.rs:689
		let coef16 = m20 * m32 - m30 * m22;
	mulps xmm0, xmm8
		// src/f32/scalar/mat4.rs:685
		let coef12 = m20 * m33 - m30 * m23;
	subps xmm5, xmm10
	movaps xmmword ptr [rsp - 128], xmm5
		// src/f32/scalar/mat4.rs:689
		let coef16 = m20 * m32 - m30 * m22;
	subps xmm0, xmm3
	movaps xmm10, xmm0
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	movaps xmm13, xmm7
	shufps xmm13, xmm7, 0
	movss xmm1, dword ptr [rsi + 44]
	movss xmm13, xmm1
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	movaps xmm2, xmm12
	movss xmm2, xmm1
	shufps xmm7, xmm12, 16
	shufps xmm7, xmm12, 226
	mulps xmm2, xmm7
	subps xmm4, xmm2
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	mulps xmm11, xmm14
	movaps xmm1, xmm11
	shufps xmm1, xmm11, 85
	subss xmm11, xmm1
	movaps xmmword ptr [rsp + 176], xmm11
	movaps xmm15, xmmword ptr [rsp - 112]
		// src/f32/scalar/mat4.rs:678
		let coef06 = m11 * m33 - m31 * m13;
	shufps xmm15, xmm15, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm0, xmm4, 16
	shufps xmm0, xmm4, 226
	movaps xmm11, xmm4
	mulps xmm0, xmm15
	movaps xmmword ptr [rsp - 112], xmm0
		// src/f32/scalar/mat4.rs:678
		let coef06 = m11 * m33 - m31 * m13;
	mulps xmm15, xmm12
	movaps xmm2, xmmword ptr [rsp - 80]
	shufps xmm2, xmm2, 0
	mulps xmm2, xmm14
	subps xmm2, xmm15
	movaps xmmword ptr [rsp - 80], xmm2
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	movsd xmm15, qword ptr [rsi]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm0, xmm15
	shufps xmm0, xmm15, 225
	movaps xmm1, xmm0
	movaps xmm7, xmm0
	mulps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 85
	subss xmm0, xmm1
	movaps xmmword ptr [rsp + 80], xmm0
	movaps xmmword ptr [rsp - 32], xmm14
	movaps xmm5, xmmword ptr [rsp - 64]
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	mulps xmm5, xmm14
	mulps xmm12, xmmword ptr [rsp - 16]
	subps xmm5, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm8, xmm15
	shufps xmm8, xmm15, 85
	movaps xmm4, xmmword ptr [rsp + 128]
	movaps xmm1, xmm4
	movaps xmmword ptr [rsp + 64], xmm11
	mulss xmm1, xmm11
	movaps xmm6, xmm8
	movaps xmm2, xmmword ptr [rsp + 144]
	mulss xmm6, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm6, xmm1
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	shufps xmm14, xmm14, 85
	movaps xmmword ptr [rsp + 112], xmm14
	mulps xmm13, xmm14
	subps xmm13, xmmword ptr [rsp - 96]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm0, xmm4
	unpcklps xmm0, xmm4
	movaps xmm12, xmm0
	movaps xmm0, xmm8
	mulss xmm0, xmm10
	movaps xmmword ptr [rsp - 96], xmm0
	movaps xmm1, xmm5
	mulps xmm7, xmm5
	movaps xmmword ptr [rsp + 48], xmm7
	movaps xmm7, xmm4
	mulps xmm7, xmm5
	movaps xmm0, xmmword ptr [rsp - 48]
	mulss xmm1, xmm0
	movaps xmmword ptr [rsp - 64], xmm1
	movaps xmmword ptr [rsp + 96], xmm0
	movaps xmmword ptr [rsp + 32], xmm0
	movaps xmm5, xmm0
	mulps xmm0, xmm10
	movaps xmmword ptr [rsp - 48], xmm0
	movaps xmm1, xmm10
	movaps xmm3, xmm8
	movaps xmm10, xmmword ptr [rsp - 128]
	mulss xmm8, xmm10
	movaps xmm9, xmm15
	mulps xmm9, xmm10
	movaps xmm14, xmm11
	unpcklps xmm14, xmm10
	mulps xmm12, xmm10
	movaps xmmword ptr [rsp + 16], xmm12
	unpcklps xmm10, xmm1
	movaps xmmword ptr [rsp - 128], xmm10
	shufps xmm1, xmm13, 17
	shufps xmm1, xmm13, 226
	mulps xmm1, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 85
	subps xmm1, xmm0
	movaps xmm0, xmmword ptr [rsp + 160]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm5, xmm0
	movaps xmmword ptr [rsp], xmm5
	movaps xmm12, xmm4
	mulps xmm0, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm1, xmm0
	movaps xmm4, xmmword ptr [rsp + 240]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm3, xmm4
	movaps xmm5, xmmword ptr [rsp - 80]
	movaps xmm0, xmm5
	shufps xmm0, xmm5, 85
	mulss xmm0, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm3, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm7, xmm7, 85
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm7, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm0, xmm15
	mulps xmm0, xmm2
	movaps xmm3, xmm12
	mulps xmm3, xmm13
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	shufps xmm0, xmm0, 85
	subss xmm0, xmm3
	shufps xmm3, xmm3, 85
	addss xmm3, xmm0
	movaps xmm10, xmmword ptr [rsp - 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm10, xmm10, 225
	movaps xmm11, xmm15
	unpcklps xmm11, xmm15
	mulps xmm11, xmm2
	movaps xmm0, xmm2
	shufps xmm0, xmm2, 0
	mulps xmm0, xmm10
	movaps xmm10, xmm4
	mulss xmm10, xmm15
	mulss xmm5, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm10, xmm5
	movaps xmm4, xmmword ptr [rsp - 64]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm4, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	shufps xmm9, xmm9, 85
	mulss xmm13, xmm15
	subss xmm13, xmm9
	movaps xmm10, xmmword ptr [rsp + 176]
	movaps xmm2, xmmword ptr [rsp + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm2, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm2, dword ptr [rsp + 80]
	movaps xmm9, xmm2
	addss xmm13, dword ptr [rsp]
	movaps xmm2, xmmword ptr [rsp + 48]
	movaps xmm5, xmm2
	shufps xmm5, xmm2, 85
	subss xmm5, xmm2
	mulss xmm10, xmm12
	addss xmm10, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm5, xmmword ptr [rip + .LCPI5_0]
	xorps xmm3, xmm5
	movlhps xmm3, xmm7
	mulps xmm14, xmmword ptr [rsp - 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subps xmm0, xmm14
	movaps xmm7, xmmword ptr [rsp - 112]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm7, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	xorps xmm13, xmm5
	movlhps xmm13, xmm9
	xorps xmm10, xmm5
	unpcklps xmm10, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subps xmm11, xmmword ptr [rsp + 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm11, xmmword ptr [rsp - 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm2, xmm15
	movaps xmm1, xmmword ptr [rsp + 64]
	mulss xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm2, xmm8
	movaps xmm9, xmmword ptr [rsp - 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm9, xmm9, 0
	mulps xmm9, xmm1
	shufps xmm1, xmm1, 85
	movaps xmm8, xmmword ptr [rsp + 96]
	mulss xmm8, xmm1
	mulss xmm1, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm1, dword ptr [rsp - 96]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm6, xmm8
	movaps xmm8, xmmword ptr [rsp - 128]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulps xmm8, xmmword ptr [rsp + 112]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subps xmm9, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm9, xmmword ptr [rsp + 192]
	addss xmm2, dword ptr [rsp + 224]
	addss xmm1, dword ptr [rsp + 208]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	xorps xmm6, xmm5
	mulps xmm15, xmm7
	movlhps xmm6, xmm7
	shufps xmm7, xmm7, 85
	xorps xmm7, xmm5
	xorps xmm4, xmm5
	xorps xmm2, xmm5
	mulps xmm12, xmm9
	movlhps xmm2, xmm9
	shufps xmm9, xmm9, 85
	xorps xmm9, xmm5
	unpcklps xmm9, xmm1
		// src/f32/scalar/mat4.rs:755
		self.inverse_checked::<false>().0
	movlhps xmm9, xmm10
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	movaps xmm0, xmm15
	shufps xmm0, xmm15, 85
	subss xmm15, xmm0
	addss xmm15, xmm12
	shufps xmm12, xmm12, 85
	subss xmm15, xmm12
	movss xmm0, dword ptr [rip + .LCPI5_1]
		// src/f32/scalar/mat4.rs:742
		let rcp_det = 1.0 / dot1;
	divss xmm0, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm1, xmm0
	shufps xmm1, xmm11, 64
	unpcklps xmm7, xmm0
	movlhps xmm7, xmm4
	shufps xmm1, xmm1, 216
	shufps xmm7, xmm7, 100
	mulps xmm7, xmm1
	shufps xmm6, xmm3, 34
	shufps xmm0, xmm0, 0
	mulps xmm6, xmm0
		// src/f32/scalar/mat4.rs:755
		self.inverse_checked::<false>().0
	movups xmmword ptr [rdi], xmm6
	movups xmmword ptr [rdi + 16], xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm2, xmm13, 34
	mulps xmm2, xmm0
		// src/f32/scalar/mat4.rs:755
		self.inverse_checked::<false>().0
	movups xmmword ptr [rdi + 32], xmm2
	movlhps xmm0, xmm0
	mulps xmm0, xmm9
	movups xmmword ptr [rdi + 48], xmm0
		// src/f32/scalar/mat4.rs:756
		}
	add rsp, 264
	.cfi_def_cfa_offset 8
	ret
