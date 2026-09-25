.section .text.gungraun::vec3a_lerp_monotonic::__gungraun_wrapper_mod::vec3a_lerp_monotonic,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_lerp_monotonic::__gungraun_wrapper_mod::vec3a_lerp_monotonic,@function
gungraun::vec3a_lerp_monotonic::__gungraun_wrapper_mod::vec3a_lerp_monotonic:
	.cfi_startproc
		// benches/gungraun.rs:506
		black_box(v1.lerp_monotonic(v2, t))
	ldr d1, [x1, #8]
	ldr d2, [x2, #8]
	ldr q3, [x1]
	ldr q4, [x2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:216
		fn sub(self, other: $t) -> $t { self - other }
	dup v2.4s, v2.s[0]
	dup v1.4s, v1.s[0]
	mov v2.d[0], v4.d[0]
	mov v1.d[0], v3.d[0]
	fsub v2.4s, v2.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.4s, v2.4s, v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.4s, v1.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:507
		}
	ret
