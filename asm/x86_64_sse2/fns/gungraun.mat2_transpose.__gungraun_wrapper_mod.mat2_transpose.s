.section .text.gungraun::mat2_transpose::__gungraun_wrapper_mod::mat2_transpose,"ax",@progbits
	.p2align	4
.type	gungraun::mat2_transpose::__gungraun_wrapper_mod::mat2_transpose,@function
gungraun::mat2_transpose::__gungraun_wrapper_mod::mat2_transpose:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	shufps xmm0, xmm0, 216
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:191
		}
	ret
