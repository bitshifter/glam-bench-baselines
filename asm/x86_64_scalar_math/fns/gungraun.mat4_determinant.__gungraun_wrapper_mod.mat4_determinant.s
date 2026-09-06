.section .text.gungraun::mat4_determinant::__gungraun_wrapper_mod::mat4_determinant,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_determinant::__gungraun_wrapper_mod::mat4_determinant,@function
gungraun::mat4_determinant::__gungraun_wrapper_mod::mat4_determinant:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:638
		let (m20, m21, m22, m23) = self.z_axis.into();
	movsd xmm3, qword ptr [rdi + 32]
		// src/f32/scalar/mat4.rs:639
		let (m30, m31, m32, m33) = self.w_axis.into();
	movsd xmm7, qword ptr [rdi + 48]
	movaps xmm5, xmm7
	shufps xmm5, xmm7, 225
		// src/f32/scalar/mat4.rs:646
		let a0123 = m20 * m31 - m21 * m30;
	mulps xmm5, xmm3
		// src/f32/scalar/mat4.rs:636
		let (m00, m01, m02, m03) = self.x_axis.into();
	movsd xmm2, qword ptr [rdi]
	movsd xmm0, qword ptr [rdi + 8]
		// src/f32/scalar/mat4.rs:637
		let (m10, m11, m12, m13) = self.y_axis.into();
	movsd xmm1, qword ptr [rdi + 16]
	movsd xmm6, qword ptr [rdi + 24]
		// src/f32/scalar/mat4.rs:636
		let (m00, m01, m02, m03) = self.x_axis.into();
	shufps xmm0, xmm0, 225
		// src/f32/scalar/mat4.rs:638
		let (m20, m21, m22, m23) = self.z_axis.into();
	movsd xmm8, qword ptr [rdi + 40]
		// src/f32/scalar/mat4.rs:639
		let (m30, m31, m32, m33) = self.w_axis.into();
	movsd xmm9, qword ptr [rdi + 56]
		// src/f32/scalar/mat4.rs:642
		let a1323 = m21 * m33 - m23 * m31;
	movaps xmm4, xmm3
	shufps xmm4, xmm3, 85
	mulps xmm4, xmm9
		// src/f32/scalar/mat4.rs:644
		let a0323 = m20 * m33 - m23 * m30;
	shufps xmm3, xmm3, 0
	mulps xmm3, xmm9
		// src/f32/scalar/mat4.rs:641
		let a2323 = m22 * m33 - m23 * m32;
	shufps xmm9, xmm9, 225
	mulps xmm9, xmm8
		// src/f32/scalar/mat4.rs:642
		let a1323 = m21 * m33 - m23 * m31;
	movaps xmm10, xmm7
	shufps xmm10, xmm7, 85
	mulps xmm10, xmm8
	subps xmm4, xmm10
		// src/f32/scalar/mat4.rs:644
		let a0323 = m20 * m33 - m23 * m30;
	shufps xmm7, xmm7, 0
	mulps xmm7, xmm8
	subps xmm3, xmm7
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	movaps xmm8, xmm1
	shufps xmm8, xmm1, 225
	movaps xmm7, xmm9
	shufps xmm7, xmm9, 0
	shufps xmm9, xmm9, 85
	subps xmm7, xmm9
	mulps xmm7, xmm8
	movaps xmm8, xmm6
		// src/f32/scalar/mat4.rs:650
		+ m02 * (m10 * a1323 - m11 * a0323 + m13 * a0123)
	movaps xmm9, xmm5
	shufps xmm9, xmm5, 0
	shufps xmm5, xmm5, 85
	subps xmm9, xmm5
	mulps xmm9, xmm6
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	shufps xmm6, xmm6, 0
	movaps xmm5, xmm4
	unpcklps xmm5, xmm3
		// src/f32/scalar/mat4.rs:650
		+ m02 * (m10 * a1323 - m11 * a0323 + m13 * a0123)
	movaps xmm10, xmm1
	shufps xmm1, xmm1, 85
	mulps xmm1, xmm3
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	shufps xmm3, xmm4, 17
	shufps xmm3, xmm4, 226
	mulps xmm3, xmm6
	subps xmm7, xmm3
	shufps xmm8, xmm8, 85
	mulps xmm5, xmm8
	addps xmm5, xmm7
	mulps xmm5, xmm2
		// src/f32/scalar/mat4.rs:650
		+ m02 * (m10 * a1323 - m11 * a0323 + m13 * a0123)
	shufps xmm10, xmm10, 0
	mulps xmm10, xmm4
	subps xmm10, xmm1
	addps xmm9, xmm10
	mulps xmm9, xmm0
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	movaps xmm0, xmm5
	shufps xmm0, xmm5, 85
	subss xmm5, xmm0
	movaps xmm0, xmm9
	shufps xmm0, xmm9, 85
	addss xmm0, xmm5
	subss xmm0, xmm9
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rsp - 4], xmm0
	lea rax, [rsp - 4]
	#APP
	#NO_APP
		// benches/gungraun.rs:328
		}
	movss xmm0, dword ptr [rsp - 4]
	ret
