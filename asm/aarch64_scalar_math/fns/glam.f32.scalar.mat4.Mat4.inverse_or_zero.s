.section .text.<glam::f32::scalar::mat4::Mat4>::inverse_or_zero,"ax",@progbits
	.globl	<glam::f32::scalar::mat4::Mat4>::inverse_or_zero
	.p2align	2
.type	<glam::f32::scalar::mat4::Mat4>::inverse_or_zero,@function
<glam::f32::scalar::mat4::Mat4>::inverse_or_zero:
		// src/f32/scalar/mat4.rs:771
		pub fn inverse_or_zero(&self) -> Self {
	.cfi_startproc
	sub sp, sp, #192
	.cfi_def_cfa_offset 192
	stp d15, d14, [sp, #128]
	stp d13, d12, [sp, #144]
	stp d11, d10, [sp, #160]
	stp d9, d8, [sp, #176]
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	.cfi_offset b14, -56
	.cfi_offset b15, -64
		// src/f32/scalar/mat4.rs:671
		let (m30, m31, m32, m33) = self.w_axis.into();
	ldr d20, [x0, #56]
	ldp s25, s19, [x0, #48]
		// src/f32/scalar/mat4.rs:670
		let (m20, m21, m22, m23) = self.z_axis.into();
	ldp s17, s18, [x0, #32]
	ldr d16, [x0, #40]
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	rev64 v0.2s, v20.2s
		// src/f32/scalar/mat4.rs:669
		let (m10, m11, m12, m13) = self.y_axis.into();
	ldp d23, d24, [x0, #16]
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	fmul v2.2s, v16.2s, v19.s[0]
		// src/f32/scalar/mat4.rs:685
		let coef12 = m20 * m33 - m30 * m23;
	fmul v5.2s, v16.2s, v25.s[0]
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	fmul v1.2s, v20.2s, v18.s[0]
		// src/f32/scalar/mat4.rs:685
		let coef12 = m20 * m33 - m30 * m23;
	fmul v3.2s, v20.2s, v17.s[0]
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	fmul v0.2s, v16.2s, v0.2s
		// src/f32/scalar/mat4.rs:677
		let coef04 = m21 * m33 - m31 * m23;
	fsub v4.2s, v1.2s, v2.2s
		// src/f32/scalar/mat4.rs:685
		let coef12 = m20 * m33 - m30 * m23;
	fsub v5.2s, v3.2s, v5.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	rev64 v2.2s, v23.2s
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	dup v1.2s, v0.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	zip2 v3.2s, v4.2s, v5.2s
	zip1 v7.2s, v4.2s, v5.2s
		// src/f32/scalar/mat4.rs:673
		let coef00 = m22 * m33 - m32 * m23;
	fsub v9.2s, v0.2s, v1.2s
		// src/f32/scalar/mat4.rs:693
		let coef20 = m20 * m31 - m30 * m21;
	fmul s0, s17, s19
	fmul s1, s18, s25
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v3.2s, v3.2s, v24.s[0]
	fmul v6.2s, v2.2s, v9.s[0]
		// src/f32/scalar/mat4.rs:693
		let coef20 = m20 * m31 - m30 * m21;
	fsub s2, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.2s, v7.2s, v24.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub v0.2s, v6.2s, v3.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v3.2s, v4.2s, v23.s[0]
	fmul v6.2s, v5.2s, v23.s[1]
	fmul v7.2s, v24.2s, v2.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v15.2s, v1.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub v1.2s, v3.2s, v6.2s
		// src/f32/scalar/mat4.rs:668
		let (m00, m01, m02, m03) = self.x_axis.into();
	ldp d6, d3, [x0]
	rev64 v21.2s, v3.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v1.2s, v7.2s, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v7.2s, v6.2s, v15.2s
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	dup v26.2s, v7.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v27.2s, v21.2s, v1.2s
		// src/f32/scalar/mat4.rs:732
		let dot1 = dot0.x + dot0.y + dot0.z + dot0.w;
	fsub v7.2s, v7.2s, v26.2s
	dup v26.2s, v27.s[1]
	fadd v7.2s, v26.2s, v7.2s
	fsub v7.2s, v7.2s, v27.2s
		// src/f32/scalar/mat4.rs:735
		if dot1 == 0.0 {
	fcmp s7, #0.0
	b.ne .LBB4_2
	movi v0.2d, #0000000000000000
	movi d1, #0000000000000000
	movi d2, #0000000000000000
	movi d3, #0000000000000000
	movi d4, #0000000000000000
	movi v5.2d, #0000000000000000
	movi v6.2d, #0000000000000000
	b .LBB4_3
.LBB4_2:
		// src/f32/scalar/mat4.rs:678
		let coef06 = m11 * m33 - m31 * m13;
	mov s0, v23.s[1]
		// src/f32/scalar/mat4.rs:679
		let coef07 = m11 * m23 - m21 * m13;
	fmul s28, s18, v24.s[1]
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	fmul s11, s18, s23
		// src/f32/scalar/mat4.rs:687
		let coef15 = m10 * m23 - m20 * m13;
	fmul s29, s23, v16.s[1]
	fmul s30, s17, v24.s[1]
	str q1, [sp, #112]
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	fmul s12, s23, v20.s[1]
	fmul s13, s25, v24.s[1]
	str q2, [sp, #48]
		// src/f32/scalar/mat4.rs:674
		let coef02 = m12 * m33 - m32 * m13;
	fmul s8, s24, v20.s[1]
	fmul s10, s20, v24.s[1]
	str q7, [sp, #80]
		// src/f32/scalar/mat4.rs:679
		let coef07 = m11 * m23 - m21 * m13;
	fmul s31, s0, v16.s[1]
	str s0, [sp, #76]
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	fmul s0, s20, v23.s[1]
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	fmul s14, s17, v23.s[1]
		// src/f32/scalar/mat4.rs:687
		let coef15 = m10 * m23 - m20 * m13;
	fsub s26, s29, s30
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	fmul s30, s25, s24
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov s29, v6.s[1]
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	fmul s25, s25, v23.s[1]
		// src/f32/scalar/mat4.rs:691
		let coef19 = m10 * m22 - m20 * m12;
	fmul s17, s17, s24
		// src/f32/scalar/mat4.rs:674
		let coef02 = m12 * m33 - m32 * m13;
	fsub s1, s8, s10
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	fmul s10, s19, s23
		// src/f32/scalar/mat4.rs:675
		let coef03 = m12 * m23 - m22 * m13;
	fmul s7, s16, v24.s[1]
		// src/f32/scalar/mat4.rs:679
		let coef07 = m11 * m23 - m21 * m13;
	fsub s27, s31, s28
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	fmul s31, s19, s24
	mov v28.16b, v2.16b
		// src/f32/scalar/mat4.rs:695
		let coef23 = m10 * m21 - m20 * m11;
	fsub s22, s11, s14
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s14, s26, v6.s[1]
	fmul s8, s6, v4.s[1]
	fmul s29, s29, v5.s[1]
		// src/f32/scalar/mat4.rs:678
		let coef06 = m11 * m33 - m31 * m13;
	fmul s19, s19, v24.s[1]
	str s1, [sp, #36]
	stp s27, s0, [sp, #28]
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	fmul v0.2s, v23.2s, v20.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s2, s27, s6
	ldr s11, [sp, #32]
	fmul s27, s3, v4.s[1]
	str s22, [sp, #108]
		// src/f32/scalar/mat4.rs:682
		let coef10 = m11 * m32 - m31 * m12;
	fsub s11, s11, s31
	fmov d31, d21
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s21, s1, s6
	str q0, [sp]
		// src/f32/scalar/mat4.rs:686
		let coef14 = m10 * m33 - m30 * m13;
	fsub s0, s12, s13
		// src/f32/scalar/mat4.rs:675
		let coef03 = m12 * m23 - m22 * m13;
	fmul s13, s24, v16.s[1]
	mov v12.16b, v9.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s14, s2, s14
	ldr s1, [sp, #76]
		// src/f32/scalar/mat4.rs:694
		let coef22 = m10 * m31 - m30 * m11;
	fsub s2, s10, s25
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s25, s28, v3.s[1]
		// src/f32/scalar/mat4.rs:678
		let coef06 = m11 * m33 - m31 * m13;
	fmul s20, s1, v20.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s1, s8, s29
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	fmul s8, s16, v23.s[1]
	stp s0, s26, [sp, #40]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s26, s9, v6.s[1]
	fmul s9, s0, s3
	ldr q0, [sp]
		// src/f32/scalar/mat4.rs:675
		let coef03 = m12 * m23 - m22 * m13;
	fsub s7, s13, s7
		// src/f32/scalar/mat4.rs:691
		let coef19 = m10 * m22 - m20 * m12;
	fmul v23.2s, v23.2s, v16.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v13.2s, v31.2s, v4.2s
	fmul v4.2s, v6.2s, v4.2s
		// src/f32/scalar/mat4.rs:690
		let coef18 = m10 * m32 - m30 * m12;
	fsub s30, s0, s30
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s0, s22, v3.s[1]
		// src/f32/scalar/mat4.rs:678
		let coef06 = m11 * m33 - m31 * m13;
	fsub s19, s20, s19
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s10, s26, s27
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	fmul s26, s18, s24
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s21, s21, s9
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s9, s7, v6.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s16, s25, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.2s, v6.2s, v12.2s
	fmul s20, s3, v5.s[1]
	fmul s7, s7, s6
		// src/f32/scalar/mat4.rs:691
		let coef19 = m10 * m22 - m20 * m12;
	fsub s23, s23, s17
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s18, s0, s14
	ldr s0, [sp, #28]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s27, s30, v3.s[1]
		// src/f32/scalar/mat4.rs:683
		let coef11 = m11 * m22 - m21 * m12;
	fsub s25, s8, s26
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s26, s13, s10
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s28, s30, v6.s[1]
	fmul s29, s0, s3
	ldr s0, [sp, #44]
	fneg s16, s16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s1, s1, s20
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s20, s11, s6
	fmul s8, s23, v3.s[1]
	fmul s22, s0, s3
	ldr s0, [sp, #36]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s21, s27, s21
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s27, s19, s3
	fmul s19, s19, s6
	fneg s26, s26
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s24, s9, s29
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s17, s0, v6.s[1]
	fmul v29.2s, v31.2s, v5.2s
	ldr s0, [sp, #40]
	fmul s31, s11, v3.s[1]
	fmul s23, s23, v6.s[1]
	fneg s21, s21
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s7, s7, s22
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s22, s25, v3.s[1]
	fmul s30, s0, v6.s[1]
	fmul s25, s25, s6
	fmul s5, s5, v6.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s27, s17, s27
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s17, s29, s1
	fmov s1, #1.00000000
	ldr q29, [sp, #80]
	ldr q0, [sp, #48]
	fadd s7, s8, s7
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s6, s19, s30
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s19, s2, v3.s[1]
		// src/f32/scalar/mat4.rs:742
		let rcp_det = 1.0 / dot1;
	fdiv s29, s1, s29
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v17.s[1], v21.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s21, s22, s24
	ldr q22, [sp, #112]
	fadd s27, s31, s27
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov s1, v15.s[1]
	mov v15.s[1], v26.s[0]
	zip1 v18.2s, v18.2s, v22.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s4, s4, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s2, s2, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s6, s19, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	fsub s19, s20, s28
	fsub s20, s25, s23
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fneg s5, s21
	ldr s21, [sp, #108]
	mov v17.s[2], v7.s[0]
	mov v15.s[2], v27.s[0]
	fmul s7, s0, s3
	fmul s3, s21, s3
	mov v16.s[1], v6.s[0]
	fneg v6.2s, v18.2s
	mov v17.s[3], v22.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s4, s7, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v15.s[3], v5.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s7, s2, s19
	fadd s18, s3, s20
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v16.d[1], v6.d[0]
	fnmul s1, s1, s29
	fmul v5.4s, v17.4s, v29.s[0]
	fmul s2, s4, s29
	fmul v0.4s, v15.4s, v29.s[0]
	fnmul s3, s7, s29
	fmul s4, s18, s29
	fmul v6.4s, v16.4s, v29.s[0]
.LBB4_3:
		// src/f32/scalar/mat4.rs:773
		}
	ldp d9, d8, [sp, #176]
		// src/f32/scalar/mat4.rs:772
		self.inverse_checked::<true>().0
	str q0, [x8]
		// src/f32/scalar/mat4.rs:773
		}
	ldp d11, d10, [sp, #160]
		// src/f32/scalar/mat4.rs:772
		self.inverse_checked::<true>().0
	str s1, [x8, #16]
	stur q5, [x8, #20]
		// src/f32/scalar/mat4.rs:773
		}
	ldp d13, d12, [sp, #144]
		// src/f32/scalar/mat4.rs:772
		self.inverse_checked::<true>().0
	stur q6, [x8, #36]
		// src/f32/scalar/mat4.rs:773
		}
	ldp d15, d14, [sp, #128]
		// src/f32/scalar/mat4.rs:772
		self.inverse_checked::<true>().0
	stp s2, s3, [x8, #52]
	str s4, [x8, #60]
		// src/f32/scalar/mat4.rs:773
		}
	add sp, sp, #192
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
