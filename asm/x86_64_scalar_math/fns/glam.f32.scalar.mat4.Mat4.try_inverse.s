.section .text.<glam::f32::scalar::mat4::Mat4>::try_inverse,"ax",@progbits
	.globl	<glam::f32::scalar::mat4::Mat4>::try_inverse
	.p2align	4
.type	<glam::f32::scalar::mat4::Mat4>::try_inverse,@function
<glam::f32::scalar::mat4::Mat4>::try_inverse:
		// src/f32/scalar/mat4.rs:760
		pub fn try_inverse(&self) -> Option<Self> {
	.cfi_startproc
	sub rsp, 200
	.cfi_def_cfa_offset 208
	mov rax, rdi
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	movsd xmm8, qword ptr [rsi + 16]
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	movsd xmm10, qword ptr [rsi + 32]
	movsd xmm11, qword ptr [rsi + 40]
		// src/f32/scalar/mat4.rs:671
		let (m30, m31, m32, m33) = self.w_axis.into();
	movsd xmm5, qword ptr [rsi + 48]
	movsd xmm1, qword ptr [rsi + 56]
		// src/f32/scalar/mat4.rs:689
		let coef16 = m20 * m32 - m30 * m22;
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 225
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	movaps xmm6, xmm11
	mulps xmm6, xmm0
	movaps xmm2, xmm6
	shufps xmm2, xmm6, 85
	subps xmm6, xmm2
		// src/f32/scalar/mat4.rs:681
		let coef08 = m21 * m32 - m31 * m22;
	movaps xmm13, xmm10
	shufps xmm13, xmm10, 85
	movaps xmm3, xmm13
	mulps xmm3, xmm1
	movaps xmm4, xmm5
	shufps xmm4, xmm5, 85
	movaps xmm2, xmm11
	movaps xmmword ptr [rsp + 160], xmm4
	mulps xmm2, xmm4
	subps xmm3, xmm2
		// src/f32/scalar/mat4.rs:689
		let coef16 = m20 * m32 - m30 * m22;
	movaps xmm9, xmm10
	shufps xmm9, xmm10, 0
	movaps xmmword ptr [rsp + 96], xmm9
	mulps xmm9, xmm1
	movaps xmm7, xmm5
	shufps xmm7, xmm5, 0
	movaps xmmword ptr [rsp - 112], xmm11
	movaps xmm2, xmm11
	mulps xmm2, xmm7
	subps xmm9, xmm2
	movss xmm4, dword ptr [rsi + 52]
	movaps xmmword ptr [rsp + 128], xmm10
		// src/f32/scalar/mat4.rs:693
		let coef20 = m20 * m31 - m30 * m21;
	mulss xmm4, xmm10
	movss xmm2, dword ptr [rsi + 36]
	movaps xmmword ptr [rsp + 176], xmm5
	mulss xmm2, xmm5
	subss xmm4, xmm2
	movaps xmmword ptr [rsp - 32], xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm8, xmm8, 0
	movss xmm11, dword ptr [rsi + 20]
	movaps xmm2, xmm8
	movss xmm2, xmm11
	movaps xmm5, xmm6
	shufps xmm5, xmm6, 0
	mulps xmm5, xmm2
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	movsd xmm12, qword ptr [rsi + 24]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm2, xmm12
	shufps xmm2, xmm12, 0
	movaps xmm10, xmm9
	shufps xmm10, xmm3, 17
	shufps xmm10, xmm3, 226
	mulps xmm10, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subps xmm5, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm10, xmm12
	shufps xmm10, xmm12, 85
	movaps xmm2, xmm3
	unpcklps xmm2, xmm9
	mulps xmm2, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm2, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm5, xmm8
	mulps xmm5, xmm3
	movaps xmmword ptr [rsp + 144], xmm11
	movaps xmm10, xmm11
	shufps xmm10, xmm11, 0
	mulps xmm10, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subps xmm5, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm14, xmm4
	shufps xmm14, xmm4, 0
	movaps xmmword ptr [rsp - 48], xmm12
	mulps xmm14, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm14, xmm5
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	movsd xmm10, qword ptr [rsi]
	movss xmm11, dword ptr [rsi + 4]
	movaps xmmword ptr [rsp + 112], xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movlhps xmm11, xmm10
	shufps xmm11, xmm10, 226
	mulps xmm11, xmm2
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	movaps xmm12, xmm11
	shufps xmm12, xmm11, 85
	subss xmm11, xmm12
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	movsd xmm5, qword ptr [rsi + 8]
	movaps xmmword ptr [rsp - 96], xmm5
	shufps xmm5, xmm5, 225
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm15, xmm5
	mulps xmm15, xmm14
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	movaps xmm12, xmm15
	shufps xmm12, xmm15, 85
	addss xmm12, xmm11
	subss xmm12, xmm15
	xor ecx, ecx
	xorps xmm11, xmm11
		// src/f32/scalar/mat4.rs:735
		if dot1 == 0.0 {
	ucomiss xmm12, xmm11
	jne .LBB3_1
	jp .LBB3_1
	mov dword ptr [rax], ecx
		// src/f32/scalar/mat4.rs:767
		}
	add rsp, 200
	.cfi_def_cfa_offset 8
	ret
.LBB3_1:
	.cfi_def_cfa_offset 208
	movaps xmm11, xmmword ptr [rsp - 32]
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	shufps xmm11, xmm11, 85
	movaps xmmword ptr [rsp - 128], xmm11
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	mulps xmm11, xmmword ptr [rsp - 112]
	mulps xmm13, xmmword ptr [rsp - 48]
	subps xmm11, xmm13
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm13, xmm3
	shufps xmm13, xmm3, 85
	mulss xmm13, xmm10
	movaps xmm15, xmm9
	shufps xmm15, xmm9, 85
	movaps xmmword ptr [rsp - 64], xmm2
	movaps xmm2, xmm5
	movaps xmm5, xmmword ptr [rsp + 112]
	mulss xmm15, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm13, xmm15
	movaps xmmword ptr [rsp - 80], xmm14
	movaps xmm15, xmmword ptr [rsp - 96]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm15, xmm15, 85
	mulss xmm15, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm15, xmm13
	movaps xmmword ptr [rsp + 80], xmm15
	movaps xmm14, xmmword ptr [rsp - 48]
		// src/f32/scalar/mat4.rs:674
		let coef02 = m12 * m33 - m32 * m13;
	mulps xmm0, xmm14
	movaps xmm13, xmm0
	shufps xmm13, xmm0, 85
	subss xmm0, xmm13
	movaps xmmword ptr [rsp], xmm0
	movaps xmm13, xmmword ptr [rsp - 128]
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	mulps xmm13, xmm1
	movaps xmmword ptr [rsp - 128], xmm13
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	mulps xmm1, xmm8
	mulps xmm7, xmm14
	subps xmm1, xmm7
	movaps xmmword ptr [rsp + 16], xmm1
	movaps xmmword ptr [rsp - 16], xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm7, xmm2
	mulps xmm7, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	movaps xmm15, xmm10
	mulss xmm15, xmm0
	movaps xmm13, xmm7
	shufps xmm13, xmm7, 85
	subss xmm15, xmm13
	addss xmm15, xmm7
	movaps xmmword ptr [rsp + 48], xmm15
	movaps xmm13, xmmword ptr [rsp - 112]
		// src/f32/scalar/mat4.rs:691
		let coef19 = m10 * m22 - m20 * m12;
	shufps xmm13, xmm13, 225
		// src/f32/scalar/mat4.rs:675
		let coef03 = m12 * m23 - m22 * m13;
	mulps xmm13, xmm14
	movaps xmm7, xmm13
	shufps xmm7, xmm13, 85
	subps xmm13, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm7, xmm5
	mulss xmm7, xmm13
	movaps xmm1, xmm2
	mulps xmm1, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm15, xmm1
	shufps xmm15, xmm1, 85
	subss xmm7, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm7, xmm1
	movaps xmmword ptr [rsp + 32], xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm7, xmm5
	mulss xmm7, xmm6
	mulps xmm2, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm15, xmm2
	shufps xmm15, xmm2, 85
	subss xmm7, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm7, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm3, xmm10
	movaps xmm0, xmm5
	movaps xmm2, xmm5
	mulss xmm0, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm3, xmm0
	movaps xmm15, xmmword ptr [rsp - 96]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm4, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm4, xmm3
	movaps xmm0, xmmword ptr [rsp - 80]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	xorps xmm0, xmmword ptr [rip + .LCPI3_0]
	unpcklps xmm0, xmm4
	movaps xmmword ptr [rsp + 64], xmm0
		// src/f32/scalar/mat4.rs:691
		let coef19 = m10 * m22 - m20 * m12;
	mulps xmm8, xmmword ptr [rsp - 112]
	movaps xmm0, xmmword ptr [rsp + 96]
	movaps xmm1, xmm14
	mulps xmm0, xmm14
	subps xmm8, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm4, xmm10
	mulss xmm4, xmm11
	movaps xmm3, xmmword ptr [rsp + 128]
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	shufps xmm11, xmm3, 17
	shufps xmm11, xmm3, 226
	movaps xmm0, xmm8
	shufps xmm0, xmm3, 1
	shufps xmm0, xmm3, 226
	movaps xmm3, xmm10
	movaps xmm5, xmmword ptr [rsp - 32]
	shufps xmm3, xmm5, 17
	shufps xmm3, xmm5, 226
	mulps xmm0, xmm3
	movaps xmm3, xmm5
	unpcklps xmm3, xmm10
	mulps xmm11, xmm3
	subps xmm11, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm0, xmm15
	mulss xmm0, xmm11
	movaps xmm5, xmmword ptr [rsp - 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	movaps xmm15, xmm5
	mulss xmm15, xmm11
	shufps xmm11, xmm11, 85
	addss xmm11, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm15, xmm2
	mulss xmm15, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm4, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm4, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulps xmm13, xmm10
	mulps xmm8, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm0, xmm8
	shufps xmm0, xmm8, 85
	subps xmm13, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm13, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulps xmm9, xmm5
	movaps xmm14, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	mulss xmm6, xmm10
	movaps xmm0, xmm9
	shufps xmm0, xmm9, 85
	subss xmm6, xmm0
	addss xmm6, xmm9
	movaps xmm8, xmmword ptr [rsp - 64]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm8, xmm8, 85
	movaps xmm15, xmmword ptr [rip + .LCPI3_0]
	xorps xmm8, xmm15
	unpcklps xmm8, xmm6
	movaps xmm0, xmmword ptr [rsp + 160]
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	mulps xmm0, xmm1
	movaps xmm9, xmmword ptr [rsp - 128]
	subps xmm9, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm0, xmm2
	movaps xmm1, xmmword ptr [rsp + 16]
	mulss xmm0, xmm1
	mulss xmm10, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subss xmm10, xmm0
	movaps xmm5, xmmword ptr [rsp]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm5, xmm2
	movaps xmm0, xmmword ptr [rsp + 144]
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	movlhps xmm2, xmm0
	shufps xmm2, xmm0, 226
	movaps xmm6, xmmword ptr [rsp + 176]
	shufps xmm1, xmm6, 1
	shufps xmm1, xmm6, 226
	mulps xmm1, xmm2
	movaps xmm0, xmm9
	shufps xmm0, xmm6, 17
	shufps xmm0, xmm6, 226
	mulps xmm0, xmm3
	subps xmm0, xmm1
	movaps xmm3, xmmword ptr [rsp - 96]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm3, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm3, xmm10
	movaps xmm6, xmmword ptr [rsp + 80]
	movaps xmm1, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	xorps xmm6, xmm15
	movaps xmm10, xmmword ptr [rsp + 48]
	xorps xmm10, xmm15
	movaps xmm15, xmmword ptr [rsp + 32]
	xorps xmm15, xmm1
	xorps xmm7, xmm1
	xorps xmm11, xmm1
	xorps xmm3, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	movaps xmm1, xmm14
	mulss xmm1, xmm0
	shufps xmm0, xmm0, 85
	addss xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movlhps xmm11, xmm0
	movaps xmm1, xmm9
	mulps xmm1, xmm14
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 85
	subss xmm5, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm5, xmm1
	movaps xmm1, xmm15
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movlhps xmm1, xmm5
	movss xmm0, dword ptr [rip + .LCPI3_1]
		// src/f32/scalar/mat4.rs:742
		let rcp_det = 1.0 / dot1;
	divss xmm0, xmm12
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklpd xmm7, xmmword ptr [rsp - 64]
	shufps xmm7, xmm1, 34
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0
	mulps xmm7, xmm1
		// src/f32/scalar/mat4.rs:763
		Some(m)
	movups xmmword ptr [rax + 4], xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movlhps xmm13, xmm0
	movaps xmm2, xmm0
	shufps xmm2, xmm13, 32
	movaps xmm5, xmm10
	unpcklps xmm5, xmm0
	movlhps xmm8, xmm5
	mulps xmm8, xmm2
		// src/f32/scalar/mat4.rs:763
		Some(m)
	movups xmmword ptr [rax + 20], xmm8
	movaps xmm2, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm2, xmmword ptr [rsp - 80], 212
	shufps xmm2, xmm11, 34
	mulps xmm2, xmm1
		// src/f32/scalar/mat4.rs:763
		Some(m)
	movups xmmword ptr [rax + 36], xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklps xmm3, xmm0
	unpcklps xmm0, xmm4
	movaps xmm1, xmmword ptr [rsp + 64]
	movlhps xmm1, xmm3
	shufps xmm0, xmm0, 64
	mulps xmm1, xmm0
		// src/f32/scalar/mat4.rs:763
		Some(m)
	movups xmmword ptr [rax + 52], xmm1
	mov ecx, 1
	mov dword ptr [rax], ecx
		// src/f32/scalar/mat4.rs:767
		}
	add rsp, 200
	.cfi_def_cfa_offset 8
	ret
