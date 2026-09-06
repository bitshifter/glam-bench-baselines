.section .text.gungraun::vec4_length::__gungraun_wrapper_mod::vec4_length,"ax",@progbits
	.p2align	2
.type	gungraun::vec4_length::__gungraun_wrapper_mod::vec4_length,@function
gungraun::vec4_length::__gungraun_wrapper_mod::vec4_length:
		// benches/gungraun.rs:531
		#[bench::args(vec4())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// benches/gungraun.rs:533
		black_box(v.length())
	ldp d0, d1, [x0]
	add x8, sp, #12
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	fmul v0.2s, v0.2s, v0.2s
	fmul v1.2s, v1.2s, v1.2s
	dup v2.2s, v0.s[1]
	fadd v0.2s, v0.2s, v2.2s
	fadd v0.2s, v0.2s, v1.2s
	dup v1.2s, v1.s[1]
	fadd v0.2s, v0.2s, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s0, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:534
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
