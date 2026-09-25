.section .text.gungraun::vec3a_lerp_monotonic::__gungraun_wrapper_mod::vec3a_lerp_monotonic,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_lerp_monotonic::__gungraun_wrapper_mod::vec3a_lerp_monotonic,@function
gungraun::vec3a_lerp_monotonic::__gungraun_wrapper_mod::vec3a_lerp_monotonic:
	.cfi_startproc
		// benches/gungraun.rs:506
		black_box(v1.lerp_monotonic(v2, t))
	movaps xmm1, xmmword ptr [rsi]
	movaps xmm2, xmmword ptr [rdx]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	subps xmm2, xmm1
	shufps xmm1, xmm1, 164
	shufps xmm2, xmm2, 164
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm0, xmm0, 0
	mulps xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:507
		}
	ret
