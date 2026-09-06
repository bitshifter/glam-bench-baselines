.section .text.gungraun::vec4_select::__gungraun_wrapper_mod::vec4_select,"ax",@progbits
	.p2align	4
.type	gungraun::vec4_select::__gungraun_wrapper_mod::vec4_select,@function
gungraun::vec4_select::__gungraun_wrapper_mod::vec4_select:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:257
		mem::transmute(simd_and(a, b))
	andps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:282
		mem::transmute(simd_and(simd_xor(mask, a), b))
	andnps xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:302
		mem::transmute(simd_or(a, b))
	orps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:546
		}
	ret
