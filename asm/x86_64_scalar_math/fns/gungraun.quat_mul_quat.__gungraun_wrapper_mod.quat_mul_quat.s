.section .text.gungraun::quat_mul_quat::__gungraun_wrapper_mod::quat_mul_quat,"ax",@progbits
	.p2align	4
.type	gungraun::quat_mul_quat::__gungraun_wrapper_mod::quat_mul_quat,@function
gungraun::quat_mul_quat::__gungraun_wrapper_mod::quat_mul_quat:
	.cfi_startproc
		// src/f32/scalar/quat.rs:836
		let (x0, y0, z0, w0) = self.into();
	movups xmm1, xmmword ptr [rsi]
		// src/f32/scalar/quat.rs:837
		let (x1, y1, z1, w1) = rhs.into();
	movups xmm0, xmmword ptr [rdx]
		// src/f32/scalar/quat.rs:839
		w0 * x1 + x0 * w1 + y0 * z1 - z0 * y1,
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 207
	movaps xmm3, xmm0
	shufps xmm3, xmm0, 212
	mulps xmm3, xmm2
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 48
	movaps xmm4, xmm0
	shufps xmm4, xmm0, 43
	mulps xmm4, xmm2
	movaps xmm2, xmm3
	addps xmm2, xmm4
	subps xmm3, xmm4
	shufps xmm2, xmm3, 216
	shufps xmm2, xmm2, 216
	movaps xmm3, xmm1
	shufps xmm3, xmm1, 85
	movaps xmm4, xmm0
	shufps xmm4, xmm0, 78
	mulps xmm4, xmm3
	movaps xmm3, xmm2
	addps xmm3, xmm4
	subps xmm2, xmm4
	movsd xmm2, xmm3
	shufps xmm1, xmm1, 170
	shufps xmm0, xmm0, 177
	mulps xmm0, xmm1
	movapd xmm1, xmm2
	subps xmm1, xmm0
	addps xmm0, xmm2
	shufps xmm1, xmm0, 156
	shufps xmm1, xmm1, 120
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:408
		}
	ret
