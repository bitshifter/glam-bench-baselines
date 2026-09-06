.section .text.gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation,@function
gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:187
		let (x, y, z, w) = rotation.into();
	movss xmm8, dword ptr [rdx]
	movss xmm2, dword ptr [rdx + 12]
		// src/f32/scalar/mat4.rs:188
		let x2 = x + x;
	movaps xmm0, xmm8
	addss xmm0, xmm8
		// src/f32/scalar/mat4.rs:191
		let xx = x * x2;
	movaps xmm6, xmm8
	mulss xmm6, xmm0
		// src/f32/scalar/mat4.rs:187
		let (x, y, z, w) = rotation.into();
	movsd xmm1, qword ptr [rdx + 4]
		// src/f32/scalar/mat4.rs:190
		let z2 = z + z;
	movaps xmm10, xmm1
	addps xmm10, xmm1
		// src/f32/scalar/mat4.rs:195
		let yz = y * z2;
	movaps xmm3, xmm1
		// src/f32/scalar/mat4.rs:194
		let yy = y * y2;
	mulps xmm1, xmm10
		// src/f32/scalar/mat4.rs:193
		let xz = x * z2;
	movaps xmm9, xmm2
	unpcklps xmm9, xmm8
		// src/f32/scalar/mat4.rs:192
		let xy = x * y2;
	mulss xmm8, xmm10
		// src/f32/scalar/mat4.rs:193
		let xz = x * z2;
	mulps xmm9, xmm10
		// src/f32/scalar/mat4.rs:199
		let wz = w * z2;
	shufps xmm10, xmm10, 85
		// src/f32/scalar/mat4.rs:195
		let yz = y * z2;
	mulss xmm3, xmm10
		// src/f32/scalar/mat4.rs:199
		let wz = w * z2;
	mulss xmm10, xmm2
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	movaps xmm11, xmm1
	shufps xmm11, xmm1, 85
		// src/f32/scalar/mat4.rs:201
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	movaps xmm4, xmm1
	addss xmm4, xmm11
	movss xmm5, dword ptr [rip + .LCPI284_0]
	subss xmm5, xmm4
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	movaps xmm4, xmmword ptr [rip + .LCPI284_1]
	movaps xmm7, xmm4
	shufps xmm7, xmm8, 1
	shufps xmm7, xmm8, 226
		// src/f32/scalar/mat4.rs:201
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	addss xmm8, xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklps xmm5, xmm8
		// src/f32/scalar/mat4.rs:203
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	movaps xmm8, xmm9
	shufps xmm8, xmm9, 85
		// src/f32/scalar/mat4.rs:201
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	movaps xmm12, xmm8
	subss xmm12, xmm9
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	addss xmm11, xmm6
	unpcklps xmm10, xmm11
	subps xmm7, xmm10
		// src/f32/scalar/mat4.rs:203
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	addss xmm8, xmm9
	addss xmm1, xmm6
		// src/f32/scalar/mat4.rs:197
		let wx = w * x2;
	mulss xmm0, xmm2
		// src/f32/scalar/mat4.rs:203
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	shufps xmm4, xmm3, 1
	shufps xmm4, xmm3, 226
		// src/f32/scalar/mat4.rs:202
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	addss xmm3, xmm0
		// src/f32/scalar/mat4.rs:203
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	unpcklps xmm0, xmm1
	subps xmm4, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movss xmm0, dword ptr [rsi]
	movss xmm1, dword ptr [rsi + 4]
	movss xmm2, dword ptr [rsi + 8]
	shufps xmm0, xmm0, 0
	xorps xmm6, xmm6
	xorps xmm9, xmm9
	movss xmm9, xmm12
	movlhps xmm5, xmm9
	mulps xmm5, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss xmm0, dword ptr [rcx + 8]
	movups xmmword ptr [rdi], xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	xorps xmm5, xmm5
	movlhps xmm5, xmm3
	shufps xmm7, xmm5, 36
	shufps xmm1, xmm1, 0
	mulps xmm1, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi + 16], xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movss xmm6, xmm8
	shufps xmm6, xmm4, 76
	shufps xmm6, xmm6, 120
	shufps xmm2, xmm2, 0
	mulps xmm2, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi + 32], xmm2
	shufps xmm0, xmmword ptr [rip + .LCPI284_2], 48
		// src/f32/scalar/mat4.rs:224
		Vec4::from((translation, 1.0)),
	movsd xmm1, qword ptr [rcx]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm1, xmm0, 132
	movups xmmword ptr [rdi + 48], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:384
		}
	ret
