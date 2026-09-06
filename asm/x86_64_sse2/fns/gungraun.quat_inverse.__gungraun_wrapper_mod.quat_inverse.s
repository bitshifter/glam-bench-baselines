.section .text.gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse,@function
gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:323
		mem::transmute(simd_xor(a, b))
	xorps xmm0, xmmword ptr [rip + .LCPI170_0]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:432
		}
	ret
