.section .text.gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp,@function
gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp:
	.cfi_startproc
		// benches/gungraun.rs:500
		black_box(v1.lerp(v2, t))
	movaps xmm1, xmmword ptr [rsi]
	movaps xmm2, xmmword ptr [rdx]
		// src/f32/scalar/vec3a.rs:986
		self * (1.0 - s) + rhs * s
	movaps xmm3, xmmword ptr [rip + .LCPI152_0]
	movss xmm3, xmm0
	movq xmm0, xmm0
	xorps xmm4, xmm4
	shufps xmm0, xmm4, 226
	subps xmm3, xmm0
	movaps xmm0, xmm3
	shufps xmm0, xmm3, 64
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movss xmm4, dword ptr [rdx + 8]
	movss xmm5, dword ptr [rsi + 8]
	movlhps xmm5, xmm4
	shufps xmm2, xmm5, 36
	mulps xmm2, xmm0
	shufps xmm3, xmm3, 21
	shufps xmm1, xmm5, 132
	mulps xmm1, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:501
		}
	ret
