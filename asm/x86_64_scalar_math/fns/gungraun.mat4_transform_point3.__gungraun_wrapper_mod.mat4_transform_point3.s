.section .text.gungraun::mat4_transform_point3::__gungraun_wrapper_mod::mat4_transform_point3,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_transform_point3::__gungraun_wrapper_mod::mat4_transform_point3,@function
gungraun::mat4_transform_point3::__gungraun_wrapper_mod::mat4_transform_point3:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:1302
		let mut res = self.x_axis.mul(rhs.x);
	movss xmm1, dword ptr [rdx]
		// src/f32/scalar/mat4.rs:1303
		res = self.y_axis.mul(rhs.y).add(res);
	movss xmm0, dword ptr [rdx + 4]
	movss xmm2, dword ptr [rsi + 8]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm2, xmm1
	movss xmm3, dword ptr [rsi + 24]
	mulss xmm3, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm3, xmm2
		// src/f32/scalar/mat4.rs:1304
		res = self.z_axis.mul(rhs.z).add(res);
	movss xmm2, dword ptr [rdx + 8]
	movss xmm4, dword ptr [rsi + 40]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm4, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addss xmm4, xmm3
	addss xmm4, dword ptr [rsi + 56]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklps xmm1, xmm1
		// src/f32/scalar/mat4.rs:1302
		let mut res = self.x_axis.mul(rhs.x);
	movsd xmm3, qword ptr [rsi]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulps xmm3, xmm1
		// src/f32/scalar/mat4.rs:1303
		res = self.y_axis.mul(rhs.y).add(res);
	movsd xmm1, qword ptr [rsi + 16]
		// src/f32/scalar/mat4.rs:1304
		res = self.z_axis.mul(rhs.z).add(res);
	movsd xmm5, qword ptr [rsi + 32]
		// src/f32/scalar/mat4.rs:1305
		res = self.w_axis.add(res);
	movsd xmm6, qword ptr [rsi + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklps xmm0, xmm0
	mulps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm0, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	unpcklps xmm2, xmm2
	mulps xmm2, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm2, xmm0
	addps xmm2, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm2
	movss dword ptr [rdi + 8], xmm4
	#APP
	#NO_APP
		// benches/gungraun.rs:396
		}
	ret
