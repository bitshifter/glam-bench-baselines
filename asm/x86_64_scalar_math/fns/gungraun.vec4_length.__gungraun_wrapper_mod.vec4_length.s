.section .text.gungraun::vec4_length::__gungraun_wrapper_mod::vec4_length,"ax",@progbits
	.p2align	4
.type	gungraun::vec4_length::__gungraun_wrapper_mod::vec4_length,@function
gungraun::vec4_length::__gungraun_wrapper_mod::vec4_length:
	.cfi_startproc
		// benches/gungraun.rs:533
		black_box(v.length())
	movsd xmm0, qword ptr [rdi]
	movsd xmm1, qword ptr [rdi + 8]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	mulps xmm0, xmm0
	mulps xmm1, xmm1
	movaps xmm2, xmm0
	shufps xmm2, xmm0, 85
	addss xmm2, xmm0
	addss xmm2, xmm1
	shufps xmm1, xmm1, 85
	addss xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm0, xmm0
	sqrtss xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rsp - 4], xmm0
	lea rax, [rsp - 4]
	#APP
	#NO_APP
		// benches/gungraun.rs:534
		}
	movss xmm0, dword ptr [rsp - 4]
	ret
