.section .text.gungraun::vec4_length::__gungraun_wrapper_mod::vec4_length,"ax",@progbits
	.p2align	2
.type	gungraun::vec4_length::__gungraun_wrapper_mod::vec4_length,@function
gungraun::vec4_length::__gungraun_wrapper_mod::vec4_length:
		// benches/gungraun.rs:531
		#[bench::args(vec4())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v0.4s, v0.4s, v0.4s
	add x8, sp, #12
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:597
		unsafe { _vaddvq_f32(a) }
	faddp v0.4s, v0.4s, v0.4s
	faddp s0, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s0, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:534
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
