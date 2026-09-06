.section .text.gungraun::vec4_normalize::__gungraun_wrapper_mod::vec4_normalize,"ax",@progbits
	.p2align	2
.type	gungraun::vec4_normalize::__gungraun_wrapper_mod::vec4_normalize,@function
gungraun::vec4_normalize::__gungraun_wrapper_mod::vec4_normalize:
	.cfi_startproc
		// benches/gungraun.rs:539
		black_box(v.normalize())
	ldr q0, [x1]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	fmul v1.4s, v0.4s, v0.4s
	dup v2.2s, v1.s[1]
	ext v3.16b, v1.16b, v1.16b, #8
	fadd v2.2s, v1.2s, v2.2s
	dup v1.2s, v1.s[3]
	fadd v2.2s, v2.2s, v3.2s
	fadd v1.2s, v2.2s, v1.2s
	fmov s2, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s1, s1
		// src/f32/scalar/vec4.rs:630
		1.0 / self.length()
	fdiv s1, s2, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.4s, v0.4s, v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:540
		}
	ret
