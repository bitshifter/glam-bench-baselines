.section .text.gungraun::vec4_dot_into_vec::__gungraun_wrapper_mod::vec4_dot_into_vec,"ax",@progbits
	.p2align	2
.type	gungraun::vec4_dot_into_vec::__gungraun_wrapper_mod::vec4_dot_into_vec,@function
gungraun::vec4_dot_into_vec::__gungraun_wrapper_mod::vec4_dot_into_vec:
	.cfi_startproc
		// benches/gungraun.rs:545
		black_box(v1.dot_into_vec(v2))
	ldp d0, d3, [x2]
	ldp d1, d2, [x1]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	fmul v0.2s, v1.2s, v0.2s
	dup v1.2s, v0.s[1]
	fadd v0.2s, v0.2s, v1.2s
	fmul v1.2s, v2.2s, v3.2s
	fadd v0.2s, v0.2s, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	dup v1.4s, v1.s[1]
	dup v0.4s, v0.s[0]
	fadd v0.4s, v0.4s, v1.4s
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:546
		}
	ret
