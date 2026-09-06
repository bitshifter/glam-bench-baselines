.section .text.gungraun::mat4_determinant::__gungraun_wrapper_mod::mat4_determinant,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_determinant::__gungraun_wrapper_mod::mat4_determinant,@function
gungraun::mat4_determinant::__gungraun_wrapper_mod::mat4_determinant:
		// benches/gungraun.rs:325
		#[bench::args(mat4())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// src/f32/scalar/mat4.rs:639
		let (m30, m31, m32, m33) = self.w_axis.into();
	ldr d0, [x0, #56]
	ldp s6, s2, [x0, #48]
		// src/f32/scalar/mat4.rs:638
		let (m20, m21, m22, m23) = self.z_axis.into();
	ldp s5, s4, [x0, #32]
	add x8, sp, #12
		// src/f32/scalar/mat4.rs:641
		let a2323 = m22 * m33 - m23 * m32;
	rev64 v1.2s, v0.2s
		// src/f32/scalar/mat4.rs:638
		let (m20, m21, m22, m23) = self.z_axis.into();
	ldr d3, [x0, #40]
		// src/f32/scalar/mat4.rs:642
		let a1323 = m21 * m33 - m23 * m31;
	fmul v7.2s, v0.2s, v4.s[0]
	fmul v16.2s, v3.2s, v2.s[0]
		// src/f32/scalar/mat4.rs:644
		let a0323 = m20 * m33 - m23 * m30;
	fmul v0.2s, v0.2s, v5.s[0]
	fmul v17.2s, v3.2s, v6.s[0]
		// src/f32/scalar/mat4.rs:646
		let a0123 = m20 * m31 - m21 * m30;
	fmul s2, s5, s2
	fmul s4, s4, s6
		// src/f32/scalar/mat4.rs:641
		let a2323 = m22 * m33 - m23 * m32;
	fmul v1.2s, v3.2s, v1.2s
		// src/f32/scalar/mat4.rs:642
		let a1323 = m21 * m33 - m23 * m31;
	fsub v3.2s, v7.2s, v16.2s
		// src/f32/scalar/mat4.rs:637
		let (m10, m11, m12, m13) = self.y_axis.into();
	ldr d16, [x0, #16]
		// src/f32/scalar/mat4.rs:644
		let a0323 = m20 * m33 - m23 * m30;
	fsub v0.2s, v0.2s, v17.2s
		// src/f32/scalar/mat4.rs:646
		let a0123 = m20 * m31 - m21 * m30;
	fsub s2, s2, s4
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	dup v7.2s, v1.s[0]
	dup v1.2s, v1.s[1]
	rev64 v17.2s, v16.2s
	zip2 v18.2s, v3.2s, v0.2s
	zip1 v6.2s, v3.2s, v0.2s
		// src/f32/scalar/mat4.rs:650
		+ m02 * (m10 * a1323 - m11 * a0323 + m13 * a0123)
	fmul v3.2s, v3.2s, v16.s[0]
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	fsub v1.2s, v7.2s, v1.2s
		// src/f32/scalar/mat4.rs:637
		let (m10, m11, m12, m13) = self.y_axis.into();
	ldr d7, [x0, #24]
		// src/f32/scalar/mat4.rs:650
		+ m02 * (m10 * a1323 - m11 * a0323 + m13 * a0123)
	fmul v0.2s, v0.2s, v16.s[1]
	fmul v2.2s, v7.2s, v2.s[0]
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	fmul v5.2s, v18.2s, v7.s[0]
	fmul v4.2s, v6.2s, v7.s[1]
	fmul v1.2s, v17.2s, v1.2s
		// src/f32/scalar/mat4.rs:650
		+ m02 * (m10 * a1323 - m11 * a0323 + m13 * a0123)
	fsub v0.2s, v3.2s, v0.2s
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	fsub v1.2s, v1.2s, v5.2s
		// src/f32/scalar/mat4.rs:650
		+ m02 * (m10 * a1323 - m11 * a0323 + m13 * a0123)
	fadd v0.2s, v2.2s, v0.2s
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	fadd v1.2s, v4.2s, v1.2s
		// src/f32/scalar/mat4.rs:636
		let (m00, m01, m02, m03) = self.x_axis.into();
	ldp d4, d3, [x0]
	rev64 v3.2s, v3.2s
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	fmul v1.2s, v4.2s, v1.2s
		// src/f32/scalar/mat4.rs:650
		+ m02 * (m10 * a1323 - m11 * a0323 + m13 * a0123)
	fmul v0.2s, v3.2s, v0.2s
		// src/f32/scalar/mat4.rs:648
		m00 * (m11 * a2323 - m12 * a1323 + m13 * a1223)
	dup v2.2s, v1.s[1]
	fsub v1.2s, v1.2s, v2.2s
	dup v2.2s, v0.s[1]
	fadd v1.2s, v2.2s, v1.2s
	fsub v0.2s, v1.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:328
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
