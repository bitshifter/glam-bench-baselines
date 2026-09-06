.section .text.<glam::f32::scalar::mat4::Mat4>::try_inverse,"ax",@progbits
	.globl	<glam::f32::scalar::mat4::Mat4>::try_inverse
	.p2align	2
.type	<glam::f32::scalar::mat4::Mat4>::try_inverse,@function
<glam::f32::scalar::mat4::Mat4>::try_inverse:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:671
		let (m30, m31, m32, m33) = self.w_axis.into();
	ldr d23, [x0, #56]
	ldp s22, s21, [x0, #48]
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	ldp s20, s17, [x0, #32]
	ldr d7, [x0, #40]
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	rev64 v0.2s, v23.2s
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	ldp d24, d25, [x0, #16]
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	fmul v2.2s, v7.2s, v21.s[0]
		// src/f32/scalar/mat4.rs:685
		let coef12 = m20 * m33 - m30 * m23;
	fmul v4.2s, v7.2s, v22.s[0]
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	fmul v1.2s, v23.2s, v17.s[0]
		// src/f32/scalar/mat4.rs:685
		let coef12 = m20 * m33 - m30 * m23;
	fmul v3.2s, v23.2s, v20.s[0]
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	fmul v0.2s, v7.2s, v0.2s
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	fsub v2.2s, v1.2s, v2.2s
		// src/f32/scalar/mat4.rs:685
		let coef12 = m20 * m33 - m30 * m23;
	fsub v3.2s, v3.2s, v4.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	rev64 v4.2s, v24.2s
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	dup v1.2s, v0.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	zip2 v5.2s, v2.2s, v3.2s
	zip1 v6.2s, v2.2s, v3.2s
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	fsub v31.2s, v0.2s, v1.2s
		// src/f32/scalar/mat4.rs:693
		let coef20 = m20 * m31 - m30 * m21;
	fmul s0, s20, s21
	fmul s1, s17, s22
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v5.2s, v5.2s, v25.s[0]
	fmul v4.2s, v4.2s, v31.s[0]
		// src/f32/scalar/mat4.rs:693
		let coef20 = m20 * m31 - m30 * m21;
	fsub s18, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub v0.2s, v4.2s, v5.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v4.2s, v6.2s, v25.s[1]
	fmul v5.2s, v2.2s, v24.s[0]
	fmul v6.2s, v3.2s, v24.s[1]
	fmul v19.2s, v25.2s, v18.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.2s, v4.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub v5.2s, v5.2s, v6.2s
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	ldp d6, d4, [x0]
	rev64 v28.2s, v4.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v1.2s, v19.2s, v5.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v19.2s, v6.2s, v0.2s
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	dup v26.2s, v19.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v27.2s, v28.2s, v1.2s
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	fsub v19.2s, v19.2s, v26.2s
	dup v26.2s, v27.s[1]
	fadd v19.2s, v26.2s, v19.2s
	fsub v5.2s, v19.2s, v27.2s
		// src/f32/scalar/mat4.rs:735
		if dot1 == 0.0 {
	fcmp s5, #0.0
	b.ne .LBB3_2
	str wzr, [x8]
		// src/f32/scalar/mat4.rs:767
		}
	ret
.LBB3_2:
	sub sp, sp, #144
	.cfi_def_cfa_offset 144
	stp d15, d14, [sp, #80]
	stp d13, d12, [sp, #96]
	stp d11, d10, [sp, #112]
	stp d9, d8, [sp, #128]
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	.cfi_offset b14, -56
	.cfi_offset b15, -64
		// src/f32/scalar/mat4.rs:678
		let coef06 = m11 * m33 - m31 * m13;
	mov s16, v24.s[1]
		// src/f32/scalar/mat4.rs:679
		let coef07 = m11 * m23 - m21 * m13;
	fmul s26, s17, v25.s[1]
	str q1, [sp, #64]
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	fmul s30, s24, v23.s[1]
	fmul s8, s22, v25.s[1]
	str q5, [sp]
		// src/f32/scalar/mat4.rs:687
		let coef15 = m10 * m23 - m20 * m13;
	fmul s9, s24, v7.s[1]
	fmul s10, s20, v25.s[1]
	str q18, [sp, #32]
		// src/f32/scalar/mat4.rs:674
		let coef02 = m12 * m33 - m32 * m13;
	fmul s27, s25, v23.s[1]
	fmul s29, s23, v25.s[1]
	mov w9, #1
		// src/f32/scalar/mat4.rs:679
		let coef07 = m11 * m23 - m21 * m13;
	fmul s11, s16, v7.s[1]
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	fmul s13, s20, v24.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov s12, v6.s[1]
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	fsub s30, s30, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s5, s4, v2.s[1]
		// src/f32/scalar/mat4.rs:687
		let coef15 = m10 * m23 - m20 * m13;
	fsub s19, s9, s10
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	fmul s9, s17, s24
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s10, s6, v2.s[1]
		// src/f32/scalar/mat4.rs:674
		let coef02 = m12 * m33 - m32 * m13;
	fsub s29, s27, s29
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	fmul v27.2s, v24.2s, v23.2s
		// src/f32/scalar/mat4.rs:679
		let coef07 = m11 * m23 - m21 * m13;
	fsub s8, s11, s26
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	fmul s26, s22, s25
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s12, s12, v3.s[1]
	fmul s14, s30, s4
	fmul s30, s30, v6.s[1]
	fmul s15, s19, v6.s[1]
	str s19, [sp, #56]
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	fsub s19, s9, s13
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	fmul s9, s23, v24.s[1]
		// src/f32/scalar/mat4.rs:678
		let coef06 = m11 * m33 - m31 * m13;
	fmul s23, s16, v23.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s11, s29, s6
	fmul s1, s8, s6
	mov v16.16b, v31.16b
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	fsub s27, s27, s26
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	fmul s13, s21, s25
	fmov d26, d28
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s10, s10, s12
		// src/f32/scalar/mat4.rs:675
		let coef03 = m12 * m23 - m22 * m13;
	fmul s12, s25, v7.s[1]
	str s19, [sp, #60]
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	fmul s28, s22, v24.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s31, s16, v6.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s11, s11, s14
		// src/f32/scalar/mat4.rs:675
		let coef03 = m12 * m23 - m22 * m13;
	fmul s14, s7, v25.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s1, s1, s15
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	fmul s15, s21, s24
	stp s27, s29, [sp, #24]
		// src/f32/scalar/mat4.rs:678
		let coef06 = m11 * m33 - m31 * m13;
	fmul s21, s21, v25.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s22, s18, v4.s[1]
	fmul s29, s8, s4
	fmul s19, s19, v4.s[1]
	fmul s18, s27, v4.s[1]
		// src/f32/scalar/mat4.rs:691
		let coef19 = m10 * m22 - m20 * m12;
	fmul s27, s20, s25
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s5, s31, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v31.2s, v26.2s, v2.2s
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	fsub s9, s9, s13
		// src/f32/scalar/mat4.rs:675
		let coef03 = m12 * m23 - m22 * m13;
	fsub s12, s12, s14
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	fmul s13, s17, s25
	fmul s14, s7, v24.s[1]
		// src/f32/scalar/mat4.rs:678
		let coef06 = m11 * m33 - m31 * m13;
	fsub s21, s23, s21
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v20.2s, v6.2s, v16.2s
	ldr s16, [sp, #28]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s17, s19, s1
	fadd s23, s22, s10
	fadd s1, s18, s11
	ldp d11, d10, [sp, #112]
		// src/f32/scalar/mat4.rs:691
		let coef19 = m10 * m22 - m20 * m12;
	fmul v18.2s, v24.2s, v7.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s22, s4, v3.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s5, s31, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s24, s16, v6.s[1]
	fmul s25, s21, s4
	ldr s16, [sp, #56]
	fmul s21, s21, s6
	fmul s19, s12, v6.s[1]
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	fsub s7, s14, s13
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	fsub s28, s15, s28
		// src/f32/scalar/mat4.rs:691
		let coef19 = m10 * m22 - m20 * m12;
	fsub s31, s18, s27
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s18, s12, s6
	fmul s8, s16, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s20, s20, s22
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v22.2s, v26.2s, v3.2s
	ldr q26, [sp]
	fneg s5, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s24, s24, s25
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s25, s9, v4.s[1]
	fmov s16, #1.00000000
	ldp d13, d12, [sp, #96]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s19, s19, s29
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s29, s7, v4.s[1]
	fmul s7, s7, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s21, s21, s30
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fneg s1, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s30, s18, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s18, s22, s20
		// src/f32/scalar/mat4.rs:742
		let rcp_det = 1.0 / dot1;
	fdiv s16, s16, s26
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s20, s31, v4.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s22, s25, s24
	ldr q25, [sp, #64]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov s24, v0.s[1]
	mov v0.s[1], v5.s[0]
	ldp d15, d14, [sp, #80]
	fmul s8, s28, v4.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s5, s29, s19
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.2s, v6.2s, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s20, s20, s30
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v18.s[1], v1.s[0]
	fmul s3, s3, v6.s[1]
	zip1 v1.2s, v17.2s, v25.2s
	fneg s17, s23
	mov v0.s[2], v22.s[0]
	ldr s22, [sp, #24]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s19, s8, s21
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s21, s9, s6
	fneg s5, s5
	fmul s22, s22, v6.s[1]
	ldp d9, d8, [sp, #128]
	fmul s6, s31, v6.s[1]
	mov v18.s[2], v20.s[0]
	ldr s20, [sp, #60]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s2, s2, s3
	ldr q3, [sp, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fneg v1.2s, v1.2s
	mov v17.s[1], v19.s[0]
	mov v0.s[3], v5.s[0]
	fmul s19, s28, s4
	fmul s3, s3, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s5, s21, s22
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s4, s20, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s6, s7, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v18.s[3], v25.s[1]
	mov v17.d[1], v1.d[0]
	fmul v0.4s, v0.4s, v16.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s1, s3, s2
	fadd s2, s19, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fnmul s3, s24, s16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s4, s4, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v5.4s, v18.4s, v16.s[0]
	fmul v6.4s, v17.4s, v16.s[0]
		// src/f32/scalar/mat4.rs:763
		Some(m)
	stur q0, [x8, #4]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s0, s1, s16
	fnmul s1, s2, s16
		// src/f32/scalar/mat4.rs:763
		Some(m)
	str s3, [x8, #20]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s2, s4, s16
		// src/f32/scalar/mat4.rs:763
		Some(m)
	stur q5, [x8, #24]
	stur q6, [x8, #40]
	stp s0, s1, [x8, #56]
	str s2, [x8, #64]
	add sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	.cfi_restore b12
	.cfi_restore b13
	.cfi_restore b14
	.cfi_restore b15
	str w9, [x8]
		// src/f32/scalar/mat4.rs:767
		}
	ret
