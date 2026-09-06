.section .text.gungraun::vec3_dot::__gungraun_wrapper_mod::vec3_dot,"ax",@progbits
	.p2align	4
.type	gungraun::vec3_dot::__gungraun_wrapper_mod::vec3_dot,@function
gungraun::vec3_dot::__gungraun_wrapper_mod::vec3_dot:
	.cfi_startproc
		// benches/gungraun.rs:551
		black_box(v1.dot(v2))
	movss xmm0, dword ptr [rdi]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulss xmm0, dword ptr [rsi]
		// benches/gungraun.rs:551
		black_box(v1.dot(v2))
	movsd xmm1, qword ptr [rdi + 4]
	movsd xmm2, qword ptr [rsi + 4]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulps xmm2, xmm1
	addss xmm0, xmm2
	shufps xmm2, xmm2, 85
	addss xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rsp - 4], xmm2
	lea rax, [rsp - 4]
	#APP
	#NO_APP
		// benches/gungraun.rs:552
		}
	movss xmm0, dword ptr [rsp - 4]
	ret
