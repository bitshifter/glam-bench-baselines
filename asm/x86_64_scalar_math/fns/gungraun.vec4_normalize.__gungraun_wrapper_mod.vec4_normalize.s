.section .text.gungraun::vec4_normalize::__gungraun_wrapper_mod::vec4_normalize,"ax",@progbits
	.p2align	4
.type	gungraun::vec4_normalize::__gungraun_wrapper_mod::vec4_normalize,@function
gungraun::vec4_normalize::__gungraun_wrapper_mod::vec4_normalize:
	.cfi_startproc
		// benches/gungraun.rs:539
		black_box(v.normalize())
	movups xmm0, xmmword ptr [rsi]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	movaps xmm1, xmm0
	mulps xmm1, xmm0
	movaps xmm2, xmm1
	movaps xmm3, xmm1
	shufps xmm3, xmm1, 85
	addss xmm3, xmm1
	shufps xmm1, xmm1, 255
	movhlps xmm2, xmm2
	addss xmm3, xmm2
	addss xmm3, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm1, xmm1
	sqrtss xmm1, xmm3
	movss xmm2, dword ptr [rip + .LCPI208_0]
		// src/f32/scalar/vec4.rs:630
		1.0 / self.length()
	divss xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm2, xmm2, 0
	mulps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:540
		}
	ret
