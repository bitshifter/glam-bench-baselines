.section .text.gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4,"ax",@progbits
	.p2align	4
.type	gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4,@function
gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4:
	.cfi_startproc
		// benches/gungraun.rs:527
		black_box(v1 * v2)
	movups xmm0, xmmword ptr [rsi]
	movups xmm1, xmmword ptr [rdx]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:528
		}
	ret
