.section .text.gungraun::vec3_dot::__gungraun_wrapper_mod::vec3_dot,"ax",@progbits
	.p2align	2
.type	gungraun::vec3_dot::__gungraun_wrapper_mod::vec3_dot,@function
gungraun::vec3_dot::__gungraun_wrapper_mod::vec3_dot:
		// benches/gungraun.rs:549
		#[bench::args(vec3(), vec3())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// benches/gungraun.rs:551
		black_box(v1.dot(v2))
	ldr s0, [x0]
	ldur d1, [x0, #4]
	add x8, sp, #12
	ldr s2, [x1]
	ldur d3, [x1, #4]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s0, s0, s2
	fmul v1.2s, v1.2s, v3.2s
	fadd s0, s0, s1
	mov s1, v1.s[1]
	fadd s0, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:552
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
