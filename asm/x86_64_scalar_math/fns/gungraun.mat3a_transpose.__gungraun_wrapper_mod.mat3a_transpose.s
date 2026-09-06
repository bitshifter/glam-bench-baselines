.section .text.gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose,"ax",@progbits
	.p2align	4
.type	gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose,@function
gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:568
		z_axis: Vec3A::new(self.x_axis.z, self.y_axis.z, self.z_axis.z),
	movss xmm0, dword ptr [rsi + 8]
	movss xmm1, dword ptr [rsi + 24]
	movss xmm2, dword ptr [rsi + 40]
		// src/f32/scalar/mat3a.rs:566
		x_axis: Vec3A::new(self.x_axis.x, self.y_axis.x, self.z_axis.x),
	movsd xmm3, qword ptr [rsi]
	movsd xmm4, qword ptr [rsi + 16]
	movsd xmm5, qword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmm6, xmm4
	shufps xmm6, xmm3, 17
	unpcklps xmm3, xmm4
	shufps xmm3, xmm5, 4
	shufps xmm6, xmm5, 82
	movaps xmmword ptr [rdi + 16], xmm6
	movaps xmmword ptr [rdi], xmm3
	movss dword ptr [rdi + 32], xmm0
	movss dword ptr [rdi + 36], xmm1
	movss dword ptr [rdi + 40], xmm2
	movss dword ptr [rdi + 44], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:291
		}
	ret
