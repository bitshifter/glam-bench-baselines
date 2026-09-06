.section .text.<glam::f32::scalar::mat4::Mat4>::inverse,"ax",@progbits
	.globl	<glam::f32::scalar::mat4::Mat4>::inverse
	.p2align	2
.type	<glam::f32::scalar::mat4::Mat4>::inverse,@function
<glam::f32::scalar::mat4::Mat4>::inverse:
		// src/f32/scalar/mat4.rs:754
		pub fn inverse(&self) -> Self {
	.cfi_startproc
	sub sp, sp, #80
	.cfi_def_cfa_offset 80
	stp d15, d14, [sp, #16]
	stp d13, d12, [sp, #32]
	stp d11, d10, [sp, #48]
	stp d9, d8, [sp, #64]
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	.cfi_offset b14, -56
	.cfi_offset b15, -64
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	ldur d4, [x0, #44]
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	ldur d20, [x0, #28]
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	ldr s23, [x0, #40]
		// src/f32/scalar/mat4.rs:671
		let (m30, m31, m32, m33) = self.w_axis.into();
	ldp s19, s6, [x0, #56]
	ldur d5, [x0, #52]
		// src/f32/scalar/mat4.rs:687
		let coef15 = m10 * m23 - m20 * m13;
	mov v25.16b, v4.16b
	mov v26.16b, v20.16b
	zip2 v27.2s, v20.2s, v4.2s
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	ldur d3, [x0, #12]
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	ldr d17, [x0, #24]
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	dup v22.2s, v5.s[0]
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	dup v7.2s, v6.s[0]
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	mov v30.16b, v4.16b
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	ldur d2, [x0, #20]
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	zip2 v29.2s, v3.2s, v20.2s
		// src/f32/scalar/mat4.rs:687
		let coef15 = m10 * m23 - m20 * m13;
	mov v25.s[1], v19.s[0]
	mov v26.s[1], v23.s[0]
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	ldur d18, [x0, #36]
	rev64 v0.2s, v4.2s
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	zip2 v9.2s, v17.2s, v4.2s
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	mov v30.s[1], v17.s[1]
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	mov v22.s[0], v19.s[0]
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	zip2 v16.2s, v18.2s, v2.2s
	zip2 v21.2s, v5.2s, v18.2s
	zip1 v28.2s, v7.2s, v4.2s
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	zip1 v31.2s, v18.2s, v2.2s
	zip1 v8.2s, v5.2s, v18.2s
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	zip1 v24.2s, v17.2s, v18.2s
		// src/f32/scalar/mat4.rs:687
		let coef15 = m10 * m23 - m20 * m13;
	fmul v10.2s, v29.2s, v25.2s
	fmul v11.2s, v26.2s, v27.2s
	str d0, [sp, #8]
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	fmul v15.2s, v0.2s, v9.2s
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	ldr s26, [x0, #16]
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	ldr s0, [x0, #32]
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	fmul v12.2s, v16.2s, v28.2s
	fmul v14.2s, v30.2s, v21.2s
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	fmul v1.2s, v29.2s, v6.s[0]
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	fmul v13.2s, v31.2s, v28.2s
	fmul v30.2s, v30.2s, v8.2s
		// src/f32/scalar/mat4.rs:681
		let coef08 = m21 * m32 - m31 * m22;
	fmul v25.2s, v31.2s, v21.2s
	fmul v27.2s, v16.2s, v8.2s
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	fmul v24.2s, v24.2s, v4.s[1]
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	fmul s31, s0, s2
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	fmul v9.2s, v29.2s, v22.2s
		// src/f32/scalar/mat4.rs:687
		let coef15 = m10 * m23 - m20 * m13;
	fsub v16.2s, v10.2s, v11.2s
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	fmul s29, s26, s18
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	ldr s7, [x0]
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	fsub v21.2s, v12.2s, v14.2s
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	fsub v18.2s, v1.2s, v15.2s
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	fsub v22.2s, v13.2s, v30.2s
		// src/f32/scalar/mat4.rs:691
		let coef19 = m10 * m22 - m20 * m12;
	fmul s30, s26, s23
	fmul s8, s0, s17
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	dup v28.2s, v7.s[0]
		// src/f32/scalar/mat4.rs:681
		let coef08 = m21 * m32 - m31 * m22;
	fsub v27.2s, v25.2s, v27.2s
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	ldur d4, [x0, #4]
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	fsub v25.2s, v9.2s, v24.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v9.16b, v16.16b
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	fsub s23, s29, s31
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v29.16b, v3.16b
	ext v0.8b, v4.8b, v2.8b, #4
	zip1 v11.2s, v4.2s, v2.2s
	ext v10.8b, v21.8b, v22.8b, #4
		// src/f32/scalar/mat4.rs:691
		let coef19 = m10 * m22 - m20 * m12;
	fsub s24, s30, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	zip1 v1.2s, v3.2s, v20.2s
	mov v28.s[1], v26.s[0]
	mov v9.s[1], v18.s[1]
	ext v8.8b, v22.8b, v27.8b, #4
	mov v29.s[0], v7.s[0]
	mov v31.16b, v25.16b
	mov v12.16b, v25.16b
	fmul s30, s17, v18.s[1]
	fmul v13.2s, v2.2s, v21.2s
	zip1 v14.2s, v3.2s, v17.2s
	fmul v11.2s, v11.2s, v16.2s
	fmul v28.2s, v28.2s, v10.2s
	fmul v10.2s, v17.2s, v22.2s
	fmul v0.2s, v0.2s, v9.2s
	fmul s9, s26, s21
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	fmul s26, s26, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v12.s[0], v24.s[0]
	fmul s24, s24, s4
	mov v31.s[0], v23.s[0]
	fmul v8.2s, v29.2s, v8.2s
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	fmul v29.2s, v17.2s, v5.2s
		// src/f32/scalar/mat4.rs:674
		let coef02 = m12 * m33 - m32 * m13;
	zip1 v17.2s, v2.2s, v17.2s
	mov v5.s[1], v19.s[0]
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	fmul s19, s19, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub v10.2s, v13.2s, v10.2s
	ldr d13, [sp, #8]
	fsub s30, s9, s30
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.2s, v1.2s, v12.2s
	fmul v9.2s, v20.2s, v27.2s
	fmul v31.2s, v14.2s, v31.2s
		// src/f32/scalar/mat4.rs:756
		}
	ldp d15, d14, [sp, #16]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s12, s20, v16.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub v0.2s, v28.2s, v0.2s
	fsub v28.2s, v8.2s, v11.2s
		// src/f32/scalar/mat4.rs:674
		let coef02 = m12 * m33 - m32 * m13;
	fmul v8.2s, v17.2s, v6.s[0]
	fmul v11.2s, v5.2s, v20.s[0]
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	fmul v2.2s, v2.2s, v13.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v17.2s, v9.2s, v10.2s
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	fsub s19, s19, s29
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s5, s12, s30
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s30, s7, s21
	fmul s12, s7, s27
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v20.2s, v1.2s, v0.2s
	fadd v6.2s, v31.2s, v28.2s
		// src/f32/scalar/mat4.rs:674
		let coef02 = m12 * m33 - m32 * m13;
	fsub v28.2s, v8.2s, v11.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s8, s7, s17
	ext v1.8b, v4.8b, v3.8b, #4
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	rev64 v31.2s, v4.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v21.d[1], v21.d[0]
	fmul s0, s7, v27.s[1]
	mov v27.d[1], v27.d[0]
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	fmul s9, s5, s4
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	fsub s2, s26, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	zip2 v10.2s, v20.2s, v6.2s
	ext v11.8b, v28.8b, v22.8b, #4
	mov v22.d[1], v22.d[0]
	fmul v29.2s, v31.2s, v18.2s
	fneg v6.2s, v6.2s
	fmul v21.4s, v21.4s, v4.s[0]
	fmul v27.4s, v27.4s, v3.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s0, s0, s24
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	fsub s8, s8, s9
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v9.2s, v31.2s, v28.2s
	fmul v1.2s, v1.2s, v10.2s
	fmul v22.4s, v22.4s, v4.s[1]
	zip2 v10.2s, v25.2s, v16.2s
	fmul v11.2s, v11.2s, v7.s[0]
	fmul s16, s3, v16.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	dup v26.2s, v9.s[1]
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	fadd s8, s1, s8
	mov s1, v1.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fsub v21.4s, v21.4s, v22.4s
	fmul s22, s4, v25.s[0]
	fmul v31.2s, v31.2s, v10.2s
	fmul s10, s7, s19
	fmul s19, s19, s3
	fmul s7, s7, s28
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub v29.2s, v11.2s, v29.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v25.2s, v25.2s, v3.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub v26.2s, v26.2s, v9.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov s9, v4.s[1]
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	fsub s1, s8, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fadd v21.4s, v27.4s, v21.4s
	fmul s27, s2, v4.s[1]
	fmul s2, s2, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s22, s10, s22
	mov s8, v31.s[1]
		// src/f32/scalar/mat4.rs:756
		}
	ldp d11, d10, [sp, #48]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v25.2s, v25.2s, v29.2s
		// src/f32/scalar/mat4.rs:742
		let rcp_det = 1.0 / dot1;
	fmov s29, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s19, s19, s26
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fneg v21.4s, v21.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s22, s27, s22
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s26, s12, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s27, s9, v18.s[1]
		// src/f32/scalar/mat4.rs:742
		let rcp_det = 1.0 / dot1;
	fdiv s1, s29, s1
		// src/f32/scalar/mat4.rs:756
		}
	ldp d9, d8, [sp, #64]
	ldp d13, d12, [sp, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fneg v25.2s, v25.2s
	mov v17.s[2], v19.s[0]
	fmul s18, s4, v18.s[0]
	zip1 v19.4s, v21.4s, v21.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s21, s31, s26
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fneg s22, s22
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s26, s30, s27
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s4, s23, v4.s[1]
	zip2 v27.2s, v20.2s, v25.2s
	zip1 v20.2s, v25.2s, v20.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s3, s7, s18
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	trn1 v7.4s, v17.4s, v19.4s
	mov v21.s[1], v22.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s16, s16, s26
	fadd s0, s4, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v20.d[1], v27.d[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s2, s2, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v6.d[1], v21.d[0]
	fmul v3.4s, v7.4s, v1.s[0]
	fnmul s5, s5, s1
	fmul s4, s16, s1
	fmul v7.4s, v20.4s, v1.s[0]
	fmul s2, s2, s1
	fmul s0, s0, s1
		// src/f32/scalar/mat4.rs:755
		self.inverse_checked::<false>().0
	str q3, [x8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v3.4s, v6.4s, v1.s[0]
		// src/f32/scalar/mat4.rs:755
		self.inverse_checked::<false>().0
	stp s5, s4, [x8, #16]
	stur q7, [x8, #24]
	str s2, [x8, #40]
	stur q3, [x8, #44]
	str s0, [x8, #60]
		// src/f32/scalar/mat4.rs:756
		}
	add sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	.cfi_restore b12
	.cfi_restore b13
	.cfi_restore b14
	.cfi_restore b15
	ret
