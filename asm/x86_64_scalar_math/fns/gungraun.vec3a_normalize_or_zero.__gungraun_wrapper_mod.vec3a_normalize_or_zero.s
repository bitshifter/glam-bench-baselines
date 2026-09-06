.section .text.gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero,@function
gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero:
	.cfi_startproc
		// benches/gungraun.rs:507
		black_box(v.normalize_or_zero())
	movsd xmm0, qword ptr [rsi]
	movsd xmm2, qword ptr [rsi + 4]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm1, xmm0
		// src/f32/scalar/vec3a.rs:684
		if rcp.is_finite() && rcp > 0.0 {
	shufps xmm0, xmm2, 84
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulps xmm2, xmm2
	mulss xmm1, xmm1
	addss xmm1, xmm2
	shufps xmm2, xmm2, 85
	addss xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm1, xmm1
	sqrtss xmm1, xmm2
	movss xmm2, dword ptr [rip + .LCPI268_0]
		// src/f32/scalar/vec3a.rs:597
		1.0 / self.length()
	divss xmm2, xmm1
	movd eax, xmm2
		// src/f32/scalar/vec3a.rs:684
		if rcp.is_finite() && rcp > 0.0 {
	test eax, eax
	setns cl
	mov edx, eax
	and edx, 2147483647
	add edx, -8388608
	cmp edx, 2130706432
	setb dl
	and dl, cl
	dec eax
	cmp eax, 8388607
	setb al
	or al, dl
	shufps xmm2, xmm2, 0
	mulps xmm2, xmm0
	movzx eax, al
	movd xmm0, eax
	pshufd xmm0, xmm0, 0
	pslld xmm0, 31
	psrad xmm0, 31
	pand xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movdqa xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:508
		}
	ret
