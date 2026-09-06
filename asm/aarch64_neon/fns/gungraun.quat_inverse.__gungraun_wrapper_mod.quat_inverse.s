.section .text.gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse,@function
gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse:
		// benches/gungraun.rs:429
		#[bench::args(quat_rot_x_240())]
	.cfi_startproc
	adrp x8, .LCPI170_0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	ldr q1, [x8, :lo12:.LCPI170_0]
	fmul v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:432
		}
	ret
