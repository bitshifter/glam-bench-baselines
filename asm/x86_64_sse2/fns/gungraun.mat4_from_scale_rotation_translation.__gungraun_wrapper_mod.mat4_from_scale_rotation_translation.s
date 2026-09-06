.section .text.gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation,@function
gungraun::mat4_from_scale_rotation_translation::__gungraun_wrapper_mod::mat4_from_scale_rotation_translation:
	.cfi_startproc
		// src/f32/sse2/vec4.rs:2074
		(v.x, v.y, v.z, v.w)
	movaps xmm2, xmm0
	shufps xmm2, xmm0, 85
	movaps xmm6, xmm0
	unpckhpd xmm6, xmm0
	movaps xmm4, xmm0
	shufps xmm4, xmm0, 255
		// src/f32/sse2/mat4.rs:189
		let x2 = x + x;
	movaps xmm1, xmm0
	addps xmm1, xmm0
		// src/f32/sse2/mat4.rs:199
		let wy = w * y2;
	movaps xmm8, xmm1
	shufps xmm8, xmm1, 85
		// src/f32/sse2/mat4.rs:193
		let xy = x * y2;
	movaps xmm9, xmm0
	mulss xmm9, xmm8
		// src/f32/sse2/mat4.rs:199
		let wy = w * y2;
	mulss xmm8, xmm4
		// src/f32/sse2/mat4.rs:192
		let xx = x * x2;
	movaps xmm7, xmm0
	mulps xmm7, xmm1
		// src/f32/sse2/mat4.rs:191
		let z2 = z + z;
	movaps xmm10, xmm6
	addss xmm10, xmm6
		// src/f32/sse2/mat4.rs:194
		let xz = x * z2;
	mulss xmm0, xmm10
		// src/f32/sse2/mat4.rs:196
		let yz = y * z2;
	mulss xmm2, xmm10
		// src/f32/sse2/mat4.rs:197
		let zz = z * z2;
	mulss xmm6, xmm10
		// src/f32/sse2/mat4.rs:203
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	movaps xmm11, xmm7
	addss xmm11, xmm6
		// src/f32/sse2/mat4.rs:200
		let wz = w * z2;
	mulss xmm10, xmm4
		// src/f32/sse2/mat4.rs:203
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	movaps xmm5, xmmword ptr [rip + .LCPI280_0]
	movaps xmm3, xmm5
	shufps xmm3, xmm9, 1
	shufps xmm3, xmm9, 226
		// src/f32/sse2/mat4.rs:202
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	movaps xmm12, xmm9
	addss xmm12, xmm10
	movaps xmm13, xmm0
	subss xmm13, xmm8
		// src/f32/sse2/mat4.rs:203
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	unpcklps xmm10, xmm11
	subps xmm3, xmm10
		// src/f32/sse2/mat4.rs:204
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	addss xmm0, xmm8
	movaps xmm9, xmm7
	shufps xmm9, xmm7, 85
		// src/f32/sse2/mat4.rs:202
		let x_axis = Vec4::new(1.0 - (yy + zz), xy + wz, xz - wy, 0.0);
	addss xmm6, xmm9
	movss xmm8, dword ptr [rip + .LCPI280_1]
	subss xmm8, xmm6
		// src/f32/sse2/vec4.rs:113
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	unpcklps xmm8, xmm12
	xorps xmm6, xmm6
	xorps xmm10, xmm10
	movss xmm10, xmm13
	movlhps xmm8, xmm10
		// src/f32/sse2/mat4.rs:204
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	addss xmm9, xmm7
		// src/f32/sse2/mat4.rs:198
		let wx = w * x2;
	mulss xmm1, xmm4
		// src/f32/sse2/mat4.rs:204
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	shufps xmm5, xmm2, 1
	shufps xmm5, xmm2, 226
		// src/f32/sse2/mat4.rs:203
		let y_axis = Vec4::new(xy - wz, 1.0 - (xx + zz), yz + wx, 0.0);
	addss xmm2, xmm1
		// src/f32/sse2/vec4.rs:113
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	xorps xmm4, xmm4
	movlhps xmm4, xmm2
	shufps xmm3, xmm4, 36
		// src/f32/sse2/mat4.rs:204
		let z_axis = Vec4::new(xz + wy, yz - wx, 1.0 - (xx + yy), 0.0);
	unpcklps xmm1, xmm9
	subps xmm5, xmm1
		// src/f32/sse2/vec4.rs:113
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	movss xmm6, xmm0
	shufps xmm6, xmm5, 76
	shufps xmm6, xmm6, 120
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	movss xmm0, dword ptr [rsi]
	movss xmm1, dword ptr [rsi + 4]
	movss xmm2, dword ptr [rsi + 8]
	shufps xmm0, xmm0, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm1, xmm1, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm1, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm2, xmm2, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm6
		// src/f32/sse2/vec4.rs:113
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	movss xmm3, dword ptr [rdx]
	shufpd xmm3, xmmword ptr [rip + .LCPI280_2], 2
		// src/f32/sse2/mat4.rs:225
		Vec4::from((translation, 1.0)),
	movsd xmm4, qword ptr [rdx + 4]
		// src/f32/sse2/vec4.rs:113
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	shufps xmm3, xmm4, 76
	shufps xmm3, xmm3, 120
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm0
	movaps xmmword ptr [rdi + 16], xmm1
	movaps xmmword ptr [rdi + 32], xmm2
	movaps xmmword ptr [rdi + 48], xmm3
	#APP
	#NO_APP
		// benches/gungraun.rs:384
		}
	ret
