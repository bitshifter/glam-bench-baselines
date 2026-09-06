.section .text.gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp,@function
gungraun::vec3a_lerp::__gungraun_wrapper_mod::vec3a_lerp:
	.cfi_startproc
		// src/f32/scalar/vec3a.rs:986
		self * (1.0 - s) + rhs * s
	fmov v1.2s, #1.00000000
	movi d2, #0000000000000000
		// benches/gungraun.rs:500
		black_box(v1.lerp(v2, t))
	ldr q3, [x2]
	add x8, x2, #8
	ldr q6, [x1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	ld1 { v3.s }[2], [x8]
		// benches/gungraun.rs:500
		black_box(v1.lerp(v2, t))
	add x8, x1, #8
		// src/f32/scalar/vec3a.rs:986
		self * (1.0 - s) + rhs * s
	mov v1.s[0], v0.s[0]
	mov v2.s[1], v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	ld1 { v3.s }[3], [x8]
		// src/f32/scalar/vec3a.rs:986
		self * (1.0 - s) + rhs * s
	fsub v1.2s, v1.2s, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	rev64 v4.4s, v3.4s
		// src/f32/scalar/vec3a.rs:986
		self * (1.0 - s) + rhs * s
	zip1 v2.4s, v1.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	dup v5.4s, v1.s[1]
	mov v4.d[0], v6.d[0]
	mov v5.s[3], v0.s[0]
		// src/f32/scalar/vec3a.rs:986
		self * (1.0 - s) + rhs * s
	mov v2.s[2], v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.4s, v5.4s, v4.4s
	fmul v0.4s, v2.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:501
		}
	ret
