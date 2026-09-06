.section .text.gungraun::vec3a_length::__gungraun_wrapper_mod::vec3a_length,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_length::__gungraun_wrapper_mod::vec3a_length,@function
gungraun::vec3a_length::__gungraun_wrapper_mod::vec3a_length:
	.cfi_startproc
		// benches/gungraun.rs:482
		black_box(v.length())
	movss xmm0, dword ptr [rdi]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulss xmm0, xmm0
		// benches/gungraun.rs:482
		black_box(v.length())
	movsd xmm1, qword ptr [rdi + 4]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulps xmm1, xmm1
	addss xmm0, xmm1
	shufps xmm1, xmm1, 85
	addss xmm1, xmm0
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
		// benches/gungraun.rs:483
		}
	movss xmm0, dword ptr [rsp - 4]
	ret
