.section .text.gungraun::vec3a_dot::__gungraun_wrapper_mod::vec3a_dot,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_dot::__gungraun_wrapper_mod::vec3a_dot,@function
gungraun::vec3a_dot::__gungraun_wrapper_mod::vec3a_dot:
		// benches/gungraun.rs:468
		#[bench::args(vec3a(), vec3a())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v0.4s, v0.4s, v1.4s
	add x8, sp, #12
	faddp s1, v0.2s
	mov s0, v0.s[2]
	fadd s0, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:471
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
