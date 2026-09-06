.section .text.gungraun::mat4_mul_mat4::__gungraun_wrapper_mod::mat4_mul_mat4,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_mul_mat4::__gungraun_wrapper_mod::mat4_mul_mat4,@function
gungraun::mat4_mul_mat4::__gungraun_wrapper_mod::mat4_mul_mat4:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:1363
		let mut res = self.x_axis.mul(rhs.x);
	movups xmm2, xmmword ptr [rdx]
		// src/f32/scalar/mat4.rs:1364
		res = res.add(self.y_axis.mul(rhs.y));
	movups xmm3, xmmword ptr [rdx + 4]
		// src/f32/scalar/mat4.rs:1365
		res = res.add(self.z_axis.mul(rhs.z));
	movups xmm5, xmmword ptr [rdx + 8]
		// src/f32/scalar/mat4.rs:1366
		res = res.add(self.w_axis.mul(rhs.w));
	movups xmm4, xmmword ptr [rdx + 12]
		// src/f32/scalar/mat4.rs:1632
		self.mul(rhs.x_axis),
	movups xmm1, xmmword ptr [rsi]
	movups xmm0, xmmword ptr [rsi + 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm2, xmm2, 0
	mulps xmm2, xmm1
	shufps xmm3, xmm3, 0
	mulps xmm3, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm3, xmm2
		// src/f32/scalar/mat4.rs:1632
		self.mul(rhs.x_axis),
	movups xmm2, xmmword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm5, xmm5, 0
	mulps xmm5, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm5, xmm3
		// src/f32/scalar/mat4.rs:1632
		self.mul(rhs.x_axis),
	movups xmm3, xmmword ptr [rsi + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm4, xmm4, 0
	mulps xmm4, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm4, xmm5
		// src/f32/scalar/mat4.rs:1633
		self.mul(rhs.y_axis),
	movups xmm5, xmmword ptr [rdx + 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm4
		// src/f32/scalar/mat4.rs:1633
		self.mul(rhs.y_axis),
	movups xmm4, xmmword ptr [rdx + 20]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm5, xmm5, 0
	mulps xmm5, xmm1
	shufps xmm4, xmm4, 0
	mulps xmm4, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm4, xmm5
		// src/f32/scalar/mat4.rs:1633
		self.mul(rhs.y_axis),
	movups xmm5, xmmword ptr [rdx + 24]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm5, xmm5, 0
	mulps xmm5, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm5, xmm4
		// src/f32/scalar/mat4.rs:1633
		self.mul(rhs.y_axis),
	movups xmm4, xmmword ptr [rdx + 28]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm4, xmm4, 0
	mulps xmm4, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm4, xmm5
		// src/f32/scalar/mat4.rs:1634
		self.mul(rhs.z_axis),
	movups xmm5, xmmword ptr [rdx + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi + 16], xmm4
		// src/f32/scalar/mat4.rs:1634
		self.mul(rhs.z_axis),
	movups xmm4, xmmword ptr [rdx + 36]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm5, xmm5, 0
	mulps xmm5, xmm1
	shufps xmm4, xmm4, 0
	mulps xmm4, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm4, xmm5
		// src/f32/scalar/mat4.rs:1634
		self.mul(rhs.z_axis),
	movups xmm5, xmmword ptr [rdx + 40]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm5, xmm5, 0
	mulps xmm5, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm5, xmm4
		// src/f32/scalar/mat4.rs:1634
		self.mul(rhs.z_axis),
	movups xmm4, xmmword ptr [rdx + 44]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm4, xmm4, 0
	mulps xmm4, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm4, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi + 32], xmm4
		// src/f32/scalar/mat4.rs:1635
		self.mul(rhs.w_axis),
	movups xmm4, xmmword ptr [rdx + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm4, xmm4, 0
	mulps xmm4, xmm1
	movss xmm1, dword ptr [rdx + 52]
	shufps xmm1, xmm1, 0
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm1, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movss xmm0, dword ptr [rdx + 56]
	shufps xmm0, xmm0, 0
	mulps xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movss xmm1, dword ptr [rdx + 60]
	shufps xmm1, xmm1, 0
	mulps xmm1, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi + 48], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:360
		}
	ret
