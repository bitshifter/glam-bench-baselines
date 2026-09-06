.section .text.gungraun::mat3_mul_vec3::__gungraun_wrapper_mod::mat3_mul_vec3,"ax",@progbits
	.p2align	4
.type	gungraun::mat3_mul_vec3::__gungraun_wrapper_mod::mat3_mul_vec3,@function
gungraun::mat3_mul_vec3::__gungraun_wrapper_mod::mat3_mul_vec3:
	.cfi_startproc
		// src/f32/mat3.rs:700
		let mut res = self.x_axis.mul(rhs.x);
	movss xmm1, dword ptr [rdx]
		// src/f32/mat3.rs:701
		res = res.add(self.y_axis.mul(rhs.y));
	movss xmm0, dword ptr [rdx + 4]
	movss xmm2, dword ptr [rsi + 8]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm2, xmm1
	movss xmm3, dword ptr [rsi + 20]
	mulss xmm3, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm3, xmm2
		// src/f32/mat3.rs:702
		res = res.add(self.z_axis.mul(rhs.z));
	movss xmm2, dword ptr [rdx + 8]
	movss xmm4, dword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm4, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm4, xmm3
		// benches/gungraun.rs:259
		black_box(m * v)
	movsd xmm3, qword ptr [rsi]
	movsd xmm5, qword ptr [rsi + 12]
	movsd xmm6, qword ptr [rsi + 24]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklps xmm1, xmm1
	mulps xmm1, xmm3
	unpcklps xmm0, xmm0
	mulps xmm0, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklps xmm2, xmm2
	mulps xmm2, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm2, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm2
	movss dword ptr [rdi + 8], xmm4
	#APP
	#NO_APP
		// benches/gungraun.rs:260
		}
	ret
