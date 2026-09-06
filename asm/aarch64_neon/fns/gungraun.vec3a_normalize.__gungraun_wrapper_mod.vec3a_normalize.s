.section .text.gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize,@function
gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize:
	.cfi_startproc
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v1.4s, v0.4s, v0.4s
	faddp s2, v1.2s
	mov s1, v1.s[2]
	fadd s1, s1, s2
	fmov s2, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s1, s1
		// src/f32/neon/vec3a.rs:619
		1.0 / self.length()
	fdiv s1, s2, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v0.4s, v0.4s, v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:489
		}
	ret
