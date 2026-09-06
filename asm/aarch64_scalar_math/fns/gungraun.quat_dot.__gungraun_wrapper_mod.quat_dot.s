.section .text.gungraun::quat_dot::__gungraun_wrapper_mod::quat_dot,"ax",@progbits
	.p2align	2
.type	gungraun::quat_dot::__gungraun_wrapper_mod::quat_dot,@function
gungraun::quat_dot::__gungraun_wrapper_mod::quat_dot:
		// benches/gungraun.rs:411
		#[bench::args(quat(), quat())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// benches/gungraun.rs:413
		black_box(q1.dot(q2))
	ldp d0, d3, [x1]
	add x8, sp, #12
	ldp d1, d2, [x0]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	fmul v0.2s, v1.2s, v0.2s
	dup v1.2s, v0.s[1]
	fadd v0.2s, v0.2s, v1.2s
	fmul v1.2s, v2.2s, v3.2s
	fadd v0.2s, v0.2s, v1.2s
	dup v1.2s, v1.s[1]
	fadd v0.2s, v0.2s, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:414
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
