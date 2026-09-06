.section .text.gungraun::mat2_mul_vec2::__gungraun_wrapper_mod::mat2_mul_vec2,"ax",@progbits
	.p2align	2
.type	gungraun::mat2_mul_vec2::__gungraun_wrapper_mod::mat2_mul_vec2,@function
gungraun::mat2_mul_vec2::__gungraun_wrapper_mod::mat2_mul_vec2:
		// benches/gungraun.rs:207
		#[bench::args(mat2(), vec2())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
	add x8, sp, #8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1731
		crate::intrinsics::read_via_copy(src)
	dup v2.2s, v2.s[0]
	dup v1.2s, v1.s[0]
	mov v1.d[1], v2.d[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	ext v1.16b, v0.16b, v0.16b, #8
	fadd v0.2s, v0.2s, v1.2s
	str d0, [sp, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:210
		}
	ldp s0, s1, [sp, #8]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
