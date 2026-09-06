.section .text.gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize,@function
gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize:
	.cfi_startproc
		// benches/gungraun.rs:488
		black_box(v.normalize())
	ldr d0, [x1]
	ldur d1, [x1, #4]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v2.2s, v0.2s, v0.2s
	fmul v3.2s, v1.2s, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	dup v1.2s, v1.s[1]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd v2.2s, v2.2s, v3.2s
	dup v3.2s, v3.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v0.d[1], v1.d[0]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd v2.2s, v2.2s, v3.2s
	fmov s3, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v0.s[3], v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s2, s2
		// src/f32/scalar/vec3a.rs:597
		1.0 / self.length()
	fdiv s2, s3, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.4s, v0.4s, v2.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:489
		}
	ret
