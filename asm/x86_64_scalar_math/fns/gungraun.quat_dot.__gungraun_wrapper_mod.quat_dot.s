.section .text.gungraun::quat_dot::__gungraun_wrapper_mod::quat_dot,"ax",@progbits
	.p2align	4
.type	gungraun::quat_dot::__gungraun_wrapper_mod::quat_dot,@function
gungraun::quat_dot::__gungraun_wrapper_mod::quat_dot:
	.cfi_startproc
		// benches/gungraun.rs:413
		black_box(q1.dot(q2))
	movsd xmm0, qword ptr [rdi]
	movsd xmm1, qword ptr [rdi + 8]
	movsd xmm2, qword ptr [rsi]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	mulps xmm2, xmm0
		// benches/gungraun.rs:413
		black_box(q1.dot(q2))
	movsd xmm0, qword ptr [rsi + 8]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	mulps xmm0, xmm1
	movaps xmm1, xmm2
	shufps xmm1, xmm2, 85
	addss xmm1, xmm2
	addss xmm1, xmm0
	shufps xmm0, xmm0, 85
	addss xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rsp - 4], xmm0
	lea rax, [rsp - 4]
	#APP
	#NO_APP
		// benches/gungraun.rs:414
		}
	movss xmm0, dword ptr [rsp - 4]
	ret
