.section .text.gungraun::quat_dot::__gungraun_wrapper_mod::quat_dot,"ax",@progbits
	.p2align	2
.type	gungraun::quat_dot::__gungraun_wrapper_mod::quat_dot,@function
gungraun::quat_dot::__gungraun_wrapper_mod::quat_dot:
		// benches/gungraun.rs:411
		#[bench::args(quat(), quat())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v0.4s, v0.4s, v1.4s
	add x8, sp, #12
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:597
		unsafe { _vaddvq_f32(a) }
	faddp v0.4s, v0.4s, v0.4s
	faddp s0, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:414
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
