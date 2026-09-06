.section .text.gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4,"ax",@progbits
	.p2align	2
.type	gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4,@function
gungraun::vec4_mul_vec4::__gungraun_wrapper_mod::vec4_mul_vec4:
	.cfi_startproc
		// benches/gungraun.rs:527
		black_box(v1 * v2)
	ldr q0, [x1]
	ldr q1, [x2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:528
		}
	ret
