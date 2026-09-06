.section .text.gungraun::vec3_length::__gungraun_wrapper_mod::vec3_length,"ax",@progbits
	.p2align	2
.type	gungraun::vec3_length::__gungraun_wrapper_mod::vec3_length,@function
gungraun::vec3_length::__gungraun_wrapper_mod::vec3_length:
		// benches/gungraun.rs:561
		#[bench::args(vec3())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// benches/gungraun.rs:563
		black_box(v.length())
	ldr s0, [x0]
	ldur d1, [x0, #4]
	add x8, sp, #12
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s0, s0, s0
	fmul v1.2s, v1.2s, v1.2s
	fadd s0, s0, s1
	mov s1, v1.s[1]
	fadd s0, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s0, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:564
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
