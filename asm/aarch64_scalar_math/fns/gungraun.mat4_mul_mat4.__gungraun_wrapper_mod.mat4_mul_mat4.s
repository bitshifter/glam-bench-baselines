.section .text.gungraun::mat4_mul_mat4::__gungraun_wrapper_mod::mat4_mul_mat4,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_mul_mat4::__gungraun_wrapper_mod::mat4_mul_mat4,@function
gungraun::mat4_mul_mat4::__gungraun_wrapper_mod::mat4_mul_mat4:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:1363
		let mut res = self.x_axis.mul(rhs.x);
	ldp d1, d0, [x2]
		// src/f32/scalar/mat4.rs:1364
		res = res.add(self.y_axis.mul(rhs.y));
	ldur d2, [x2, #4]
		// src/f32/scalar/mat4.rs:1632
		self.mul(rhs.x_axis),
	ldp q3, q6, [x1]
		// src/f32/scalar/mat4.rs:1635
		self.mul(rhs.w_axis),
	ldr d18, [x2, #48]
		// src/f32/scalar/mat4.rs:1633
		self.mul(rhs.y_axis),
	ldur d5, [x2, #20]
		// src/f32/scalar/mat4.rs:1634
		self.mul(rhs.z_axis),
	ldur d17, [x2, #36]
		// src/f32/scalar/mat4.rs:1635
		self.mul(rhs.w_axis),
	ldur d19, [x2, #52]
		// src/f32/scalar/mat4.rs:1633
		self.mul(rhs.y_axis),
	ldp d4, d7, [x2, #16]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.4s, v3.4s, v1.s[0]
	fmul v2.4s, v6.4s, v2.s[0]
	fmul v5.4s, v6.4s, v5.s[0]
		// src/f32/scalar/mat4.rs:1634
		self.mul(rhs.z_axis),
	ldp d16, d21, [x2, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v17.4s, v6.4s, v17.s[0]
	fmul v4.4s, v3.4s, v4.s[0]
	fmul v6.4s, v6.4s, v19.s[0]
		// src/f32/scalar/mat4.rs:1633
		self.mul(rhs.y_axis),
	ldur d19, [x2, #28]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v16.4s, v3.4s, v16.s[0]
	fmul v3.4s, v3.4s, v18.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v1.4s, v1.4s, v2.4s
		// src/f32/scalar/mat4.rs:1632
		self.mul(rhs.x_axis),
	ldp q20, q18, [x1, #32]
		// src/f32/scalar/mat4.rs:1635
		self.mul(rhs.w_axis),
	ldr d2, [x2, #56]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v4.4s, v4.4s, v5.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.4s, v20.4s, v0.s[0]
	fmul v5.4s, v20.4s, v7.s[0]
		// src/f32/scalar/mat4.rs:1366
		res = res.add(self.w_axis.mul(rhs.w));
	ldur d7, [x2, #12]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v16.4s, v16.4s, v17.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v17.4s, v20.4s, v21.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v3.4s, v3.4s, v6.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.4s, v20.4s, v2.s[0]
		// src/f32/scalar/mat4.rs:1634
		self.mul(rhs.z_axis),
	ldur d6, [x2, #44]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.4s, v1.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.4s, v18.4s, v7.s[0]
		// src/f32/scalar/mat4.rs:1635
		self.mul(rhs.w_axis),
	ldr s7, [x2, #60]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v4.4s, v4.4s, v5.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v5.4s, v18.4s, v19.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v16.4s, v16.4s, v17.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v6.4s, v18.4s, v6.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v2.4s, v3.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v3.4s, v18.4s, v7.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.4s, v0.4s, v1.4s
	fadd v1.4s, v4.4s, v5.4s
	fadd v4.4s, v16.4s, v6.4s
	fadd v2.4s, v2.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q0, q1, [x0]
	stp q4, q2, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:360
		}
	ret
