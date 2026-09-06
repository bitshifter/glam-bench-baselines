.section .text.gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross,@function
gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross:
	.cfi_startproc
		// benches/gungraun.rs:476
		black_box(v1.cross(v2))
	movaps xmm0, xmmword ptr [rdx]
	movsd xmm1, qword ptr [rsi]
	movsd xmm2, qword ptr [rsi + 4]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm3, xmm2
	shufps xmm3, xmm1, 4
	movaps xmm4, xmm0
	shufps xmm4, xmm0, 82
	mulps xmm4, xmm3
	shufps xmm2, xmm1, 65
	shufps xmm2, xmm2, 216
	shufps xmm0, xmm0, 9
	mulps xmm0, xmm2
	subps xmm4, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm4
	#APP
	#NO_APP
		// benches/gungraun.rs:477
		}
	ret
