.section .text.gungraun::vec3_normalize::__gungraun_wrapper_mod::vec3_normalize,"ax",@progbits
	.p2align	2
.type	gungraun::vec3_normalize::__gungraun_wrapper_mod::vec3_normalize,@function
gungraun::vec3_normalize::__gungraun_wrapper_mod::vec3_normalize:
	.cfi_startproc
		// benches/gungraun.rs:569
		black_box(v.normalize())
	ldr d1, [x1]
	ldr s3, [x1, #8]
	fmov s0, #1.00000000
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v2.2s, v1.2s, v1.2s
	fmul s4, s3, s3
	faddp s2, v2.2s
	fadd s2, s2, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s2, s2
		// src/f32/vec3.rs:586
		1.0 / self.length()
	fdiv s0, s0, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.2s, v1.2s, v0.s[0]
	fmul s0, s3, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d1, [x0]
	str s0, [x0, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:570
		}
	ret
