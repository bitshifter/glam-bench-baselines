.section .text.gungraun::vec3_cross::__gungraun_wrapper_mod::vec3_cross,"ax",@progbits
	.p2align	4
.type	gungraun::vec3_cross::__gungraun_wrapper_mod::vec3_cross,@function
gungraun::vec3_cross::__gungraun_wrapper_mod::vec3_cross:
	.cfi_startproc
		// benches/gungraun.rs:557
		black_box(v1.cross(v2))
	movss xmm0, dword ptr [rsi]
	movss xmm1, dword ptr [rdx]
	movsd xmm2, qword ptr [rsi + 4]
	movsd xmm3, qword ptr [rdx + 4]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm4, xmm1
	shufps xmm4, xmm3, 212
	shufps xmm4, xmm3, 82
	mulps xmm4, xmm2
	movaps xmm5, xmm0
	shufps xmm5, xmm2, 212
	shufps xmm5, xmm2, 82
	mulps xmm5, xmm3
	subps xmm4, xmm5
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm0, xmm3
	mulss xmm2, xmm1
	subss xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm4
	movss dword ptr [rdi + 8], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:558
		}
	ret
