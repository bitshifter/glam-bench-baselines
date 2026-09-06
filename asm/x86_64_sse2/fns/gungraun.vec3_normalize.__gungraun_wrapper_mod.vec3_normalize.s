.section .text.gungraun::vec3_normalize::__gungraun_wrapper_mod::vec3_normalize,"ax",@progbits
	.p2align	4
.type	gungraun::vec3_normalize::__gungraun_wrapper_mod::vec3_normalize,@function
gungraun::vec3_normalize::__gungraun_wrapper_mod::vec3_normalize:
	.cfi_startproc
		// benches/gungraun.rs:569
		black_box(v.normalize())
	movss xmm0, dword ptr [rsi + 8]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm1, xmm0
	mulss xmm1, xmm0
		// benches/gungraun.rs:569
		black_box(v.normalize())
	movsd xmm2, qword ptr [rsi]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm3, xmm2
	mulps xmm3, xmm2
	movaps xmm4, xmm3
	shufps xmm4, xmm3, 85
	addss xmm4, xmm3
	addss xmm4, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm1, xmm1
	sqrtss xmm1, xmm4
	movss xmm3, dword ptr [rip + .LCPI204_0]
		// src/f32/vec3.rs:586
		1.0 / self.length()
	divss xmm3, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm0, xmm3
	unpcklps xmm3, xmm3
	mulps xmm3, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm3
	movss dword ptr [rdi + 8], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:570
		}
	ret
