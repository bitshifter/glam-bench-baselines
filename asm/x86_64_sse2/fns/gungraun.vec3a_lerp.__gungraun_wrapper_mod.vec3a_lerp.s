.section .text.gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp,@function
gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp:
		// benches/gungraun.rs:498
		#[bench::args(vec3a(), vec3a(), bb_f32())]
	.cfi_startproc
	movss xmm3, dword ptr [rip + .LCPI152_0]
		// src/f32/sse2/vec3a.rs:1000
		self * (1.0 - s) + rhs * s
	subss xmm3, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm3, xmm3, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm3, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/simd.rs:57
		unsafe { crate::intrinsics::simd::simd_splat(value) }
	shufps xmm2, xmm2, 0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:88
		unsafe { simd_mul(a, b) }
	mulps xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/x86/sse.rs:36
		unsafe { simd_add(a, b) }
	addps xmm2, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:501
		}
	ret
