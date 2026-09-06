.section .text.gungraun::vec3a_length::__gungraun_wrapper_mod::vec3a_length,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_length::__gungraun_wrapper_mod::vec3a_length,@function
gungraun::vec3a_length::__gungraun_wrapper_mod::vec3a_length:
		// benches/gungraun.rs:480
		#[bench::args(vec3a())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v0.4s, v0.4s, v0.4s
	add x8, sp, #12
	faddp s1, v0.2s
	mov s0, v0.s[2]
	fadd s0, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s0, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:483
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
