.section .text.gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize,@function
gungraun::vec3a_normalize::__gungraun_wrapper_mod::vec3a_normalize:
	.cfi_startproc
		// benches/gungraun.rs:488
		black_box(v.normalize())
	movsd xmm0, qword ptr [rsi]
	movsd xmm1, qword ptr [rsi + 4]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm0, xmm1, 84
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mulps xmm1, xmm1
	mulss xmm2, xmm2
	addss xmm2, xmm1
	shufps xmm1, xmm1, 85
	addss xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	sqrtss xmm1, xmm1
	movss xmm2, dword ptr [rip + .LCPI222_0]
		// src/f32/scalar/vec3a.rs:597
		1.0 / self.length()
	divss xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm2, xmm2, 0
	mulps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rdi], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:489
		}
	ret
