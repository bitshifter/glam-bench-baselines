.section .text.gungraun::vec4_dot_into_vec::__gungraun_wrapper_mod::vec4_dot_into_vec,"ax",@progbits
	.p2align	4
.type	gungraun::vec4_dot_into_vec::__gungraun_wrapper_mod::vec4_dot_into_vec,@function
gungraun::vec4_dot_into_vec::__gungraun_wrapper_mod::vec4_dot_into_vec:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 78
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:173
		$crate::intrinsics::simd::simd_shuffle(
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 177
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:540
		}
	ret
