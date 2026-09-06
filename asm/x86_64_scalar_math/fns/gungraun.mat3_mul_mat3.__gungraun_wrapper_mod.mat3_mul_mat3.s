.section .text.gungraun::mat3_mul_mat3::__gungraun_wrapper_mod::mat3_mul_mat3,"ax",@progbits
	.p2align	4
.type	gungraun::mat3_mul_mat3::__gungraun_wrapper_mod::mat3_mul_mat3,@function
gungraun::mat3_mul_mat3::__gungraun_wrapper_mod::mat3_mul_mat3:
	.cfi_startproc
		// src/f32/mat3.rs:956
		self.mul(rhs.x_axis),
	movss xmm1, dword ptr [rsi + 32]
	movups xmm2, xmmword ptr [rsi]
	movss xmm0, dword ptr [rsi + 20]
		// src/f32/mat3.rs:700
		let mut res = self.x_axis.mul(rhs.x);
	movsd xmm4, qword ptr [rdx]
		// src/f32/mat3.rs:702
		res = res.add(self.z_axis.mul(rhs.z));
	movups xmm3, xmmword ptr [rdx + 8]
		// src/f32/mat3.rs:956
		self.mul(rhs.x_axis),
	movups xmm5, xmmword ptr [rsi + 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm6, xmm5
	shufps xmm6, xmm2, 1
	movaps xmm7, xmm2
	shufps xmm7, xmm6, 135
	movaps xmm6, xmm3
	shufps xmm6, xmm4, 17
	movaps xmm8, xmm4
	shufps xmm8, xmm6, 33
	mulps xmm8, xmm7
	movaps xmm6, xmm5
	movlhps xmm6, xmm2
	shufps xmm6, xmm2, 226
	movaps xmm7, xmm3
	shufps xmm7, xmm4, 2
	shufps xmm4, xmm7, 36
	mulps xmm4, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm4, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm6, xmm5
	movlhps xmm2, xmm5
	movaps xmm7, xmm0
	movlhps xmm7, xmm5
	movsd xmm5, xmm1
	shufps xmm6, xmm5, 142
	shufps xmm3, xmm3, 192
	mulps xmm3, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm3, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movss xmm4, dword ptr [rsi + 12]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm3
		// src/f32/mat3.rs:958
		self.mul(rhs.z_axis),
	movsd xmm3, qword ptr [rdx + 28]
	movss xmm5, dword ptr [rdx + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm5, xmm1
		// src/f32/mat3.rs:956
		self.mul(rhs.x_axis),
	movsd xmm6, qword ptr [rsi + 24]
	movsd xmm8, qword ptr [rsi + 4]
	movss xmm9, dword ptr [rsi + 8]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm9, dword ptr [rdx + 24]
		// src/f32/mat3.rs:957
		self.mul(rhs.y_axis),
	movups xmm10, xmmword ptr [rdx + 12]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movlhps xmm4, xmm8
	shufps xmm8, xmm4, 132
	movaps xmm4, xmm3
	shufps xmm4, xmm10, 48
	movaps xmm11, xmm10
	shufps xmm11, xmm4, 128
	mulps xmm11, xmm8
	shufps xmm7, xmm2, 130
	movaps xmm2, xmm10
	shufps xmm2, xmm4, 37
	mulps xmm2, xmm7
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm2, xmm11
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm0, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm0, xmm9
	addss xmm0, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm1, xmm6, 212
	shufps xmm1, xmm6, 66
	shufps xmm10, xmm3, 90
	mulps xmm10, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm10, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi + 16], xmm10
	movss dword ptr [rdi + 32], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:254
		}
	ret
