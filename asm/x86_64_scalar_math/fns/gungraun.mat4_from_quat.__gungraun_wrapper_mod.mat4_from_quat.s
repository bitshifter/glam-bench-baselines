.section .text.gungraun::mat4_from_quat::__gungraun_wrapper_mod::mat4_from_quat,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_from_quat::__gungraun_wrapper_mod::mat4_from_quat,@function
gungraun::mat4_from_quat::__gungraun_wrapper_mod::mat4_from_quat:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:237
		let (x, y, z, w) = rotation.into();
	movss xmm1, dword ptr [rsi + 8]
	movss xmm6, dword ptr [rsi + 12]
		// src/f32/scalar/mat4.rs:240
		let z2 = z + z;
	movaps xmm7, xmm1
	addss xmm7, xmm1
		// src/f32/scalar/mat4.rs:246
		let zz = z * z2;
	mulss xmm1, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov dword ptr [rdi + 12], 0
		// src/f32/scalar/mat4.rs:237
		let (x, y, z, w) = rotation.into();
	movsd xmm5, qword ptr [rsi]
		// src/f32/scalar/mat4.rs:238
		let x2 = x + x;
	movaps xmm4, xmm5
	addps xmm4, xmm5
		// src/f32/scalar/mat4.rs:241
		let xx = x * x2;
	movaps xmm2, xmm5
	mulps xmm2, xmm4
		// src/f32/scalar/mat4.rs:248
		let wy = w * y2;
	movaps xmm0, xmm4
	shufps xmm0, xmm4, 85
		// src/f32/scalar/mat4.rs:242
		let xy = x * y2;
	movaps xmm3, xmm5
	mulss xmm3, xmm0
		// src/f32/scalar/mat4.rs:248
		let wy = w * y2;
	mulss xmm0, xmm6
		// src/f32/scalar/mat4.rs:247
		let wx = w * x2;
	mulss xmm4, xmm6
		// src/f32/scalar/mat4.rs:249
		let wz = w * z2;
	mulss xmm6, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov dword ptr [rdi + 28], 0
		// src/f32/scalar/mat4.rs:243
		let xz = x * z2;
	movaps xmm8, xmm5
	mulss xmm8, xmm7
		// src/f32/scalar/mat4.rs:245
		let yz = y * z2;
	shufps xmm5, xmm5, 85
	mulss xmm5, xmm7
		// src/f32/scalar/mat4.rs:253
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	movaps xmm7, xmm2
	shufps xmm7, xmm2, 85
	movaps xmm9, xmm2
	addss xmm9, xmm7
		// src/f32/scalar/mat4.rs:251
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	addss xmm7, xmm1
	movss xmm10, dword ptr [rip + .LCPI201_0]
	subss xmm10, xmm7
	movaps xmm7, xmm8
	subss xmm7, xmm0
		// src/f32/scalar/mat4.rs:253
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	movaps xmm11, xmmword ptr [rip + .LCPI201_1]
	movaps xmm12, xmm11
	shufps xmm12, xmm5, 1
	shufps xmm12, xmm5, 226
		// src/f32/scalar/mat4.rs:252
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	addss xmm5, xmm4
		// src/f32/scalar/mat4.rs:253
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	addss xmm0, xmm8
	unpcklps xmm4, xmm9
	subps xmm12, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi], xmm10
	movss dword ptr [rdi + 8], xmm7
		// src/f32/scalar/mat4.rs:252
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	addss xmm2, xmm1
	shufps xmm11, xmm3, 1
	shufps xmm11, xmm3, 226
		// src/f32/scalar/mat4.rs:251
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	addss xmm3, xmm6
		// src/f32/scalar/mat4.rs:252
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	unpcklps xmm6, xmm2
	subps xmm11, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi + 4], xmm3
	movlps qword ptr [rdi + 16], xmm11
	movss dword ptr [rdi + 24], xmm5
	movss dword ptr [rdi + 32], xmm0
	movlps qword ptr [rdi + 36], xmm12
	mov dword ptr [rdi + 44], 0
	movups xmm0, xmmword ptr [rip + .Lanon.d09413479937d5a1d503ebf50a1645fc.363]
	movups xmmword ptr [rdi + 48], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:378
		}
	ret
