.section .text.gungraun::vec4_dot_into_vec::__gungraun_wrapper_mod::vec4_dot_into_vec,"ax",@progbits
	.p2align	4
.type	gungraun::vec4_dot_into_vec::__gungraun_wrapper_mod::vec4_dot_into_vec,@function
gungraun::vec4_dot_into_vec::__gungraun_wrapper_mod::vec4_dot_into_vec:
	.cfi_startproc
		// benches/gungraun.rs:539
		black_box(v1.dot_into_vec(v2))
	movsd xmm0, qword ptr [rsi]
	movsd xmm1, qword ptr [rsi + 8]
	movsd xmm2, qword ptr [rdx]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	mulps xmm2, xmm0
		// benches/gungraun.rs:539
		black_box(v1.dot_into_vec(v2))
	movsd xmm0, qword ptr [rdx + 8]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	mulps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmm1, xmm2
	shufps xmm1, xmm2, 85
	addss xmm1, xmm2
	addss xmm1, xmm0
	shufps xmm0, xmm0, 85
	addss xmm0, xmm1
	shufps xmm0, xmm0, 0
	movups xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:540
		}
	ret
