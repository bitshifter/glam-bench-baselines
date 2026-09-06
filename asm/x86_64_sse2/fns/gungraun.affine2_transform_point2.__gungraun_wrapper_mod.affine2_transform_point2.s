.section .text.gungraun::affine2_transform_point2::__gungraun_wrapper_mod::affine2_transform_point2,"ax",@progbits
	.p2align	4
.type	gungraun::affine2_transform_point2::__gungraun_wrapper_mod::affine2_transform_point2,@function
gungraun::affine2_transform_point2::__gungraun_wrapper_mod::affine2_transform_point2:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:975
		__m128([d, c, b, a])
	shufps xmm0, xmm1, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmmword ptr [rdi]
		// src/f32/affine2.rs:271
		self.matrix2 * rhs + self.translation
	movsd xmm1, qword ptr [rdi + 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	movaps xmm2, xmm0
	unpckhpd xmm2, xmm0
	addps xmm2, xmm0
	addps xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rsp - 8], xmm2
	lea rax, [rsp - 8]
	#APP
	#NO_APP
		// benches/gungraun.rs:600
		}
	movss xmm0, dword ptr [rsp - 8]
	movss xmm1, dword ptr [rsp - 4]
	ret
