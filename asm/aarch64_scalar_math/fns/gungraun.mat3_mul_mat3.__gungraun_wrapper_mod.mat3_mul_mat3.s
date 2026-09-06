.section .text.gungraun::mat3_mul_mat3::__gungraun_wrapper_mod::mat3_mul_mat3,"ax",@progbits
	.p2align	2
.type	gungraun::mat3_mul_mat3::__gungraun_wrapper_mod::mat3_mul_mat3,@function
gungraun::mat3_mul_mat3::__gungraun_wrapper_mod::mat3_mul_mat3:
	.cfi_startproc
		// src/f32/mat3.rs:700
		let mut res = self.x_axis.mul(rhs.x);
	ldp q0, q1, [x2]
		// src/f32/mat3.rs:957
		self.mul(rhs.y_axis),
	add x8, x2, #12
		// src/f32/mat3.rs:958
		self.mul(rhs.z_axis),
	ldr d5, [x2, #24]
		// src/f32/mat3.rs:956
		self.mul(rhs.x_axis),
	ldur q3, [x1, #4]
		// src/f32/mat3.rs:958
		self.mul(rhs.z_axis),
	add x9, x2, #32
		// src/f32/mat3.rs:956
		self.mul(rhs.x_axis),
	ldur q2, [x1, #20]
		// src/f32/mat3.rs:701
		res = res.add(self.y_axis.mul(rhs.y));
	ldr s16, [x2, #4]
		// src/f32/mat3.rs:956
		self.mul(rhs.x_axis),
	ldur d20, [x1, #28]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	zip1 v4.4s, v0.4s, v1.4s
	dup v6.4s, v5.s[1]
		// src/f32/mat3.rs:957
		self.mul(rhs.y_axis),
	ldur q19, [x2, #20]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	zip1 v7.4s, v2.4s, v3.4s
	uzp1 v18.4s, v2.4s, v3.4s
	fmul s16, s16, v3.s[2]
	dup v22.2s, v20.s[1]
	ld1 { v19.s }[1], [x9]
	ext v24.16b, v2.16b, v2.16b, #4
	zip1 v5.4s, v5.4s, v6.4s
		// src/f32/mat3.rs:956
		self.mul(rhs.x_axis),
	ldr s6, [x1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	ext v4.16b, v0.16b, v4.16b, #12
	mov v7.s[2], v3.s[3]
	mov v18.s[1], v6.s[0]
	zip1 v21.4s, v1.4s, v5.4s
	mov v17.16b, v4.16b
	fmul v23.4s, v3.4s, v4.4s
	mov v3.s[0], v3.s[1]
	mov v7.s[3], v6.s[0]
	fmul s6, s6, s0
	mov v0.s[3], v1.s[1]
	mov v18.s[3], v2.s[0]
	ext v2.16b, v2.16b, v24.16b, #8
	mov v17.s[0], v4.s[3]
	mov v21.d[1], v5.d[0]
	ld1 { v5.s }[1], [x8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	mov v1.16b, v23.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	zip2 v0.4s, v0.4s, v0.4s
	fmul v3.4s, v3.4s, v5.4s
		// src/f32/mat3.rs:702
		res = res.add(self.z_axis.mul(rhs.z));
	ldr s5, [x2, #8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v17.s[3], v4.s[0]
		// src/f32/mat3.rs:956
		self.mul(rhs.x_axis),
	ldr s4, [x1, #24]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	mov v1.s[0], v23.s[3]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v18.4s, v18.4s, v21.4s
	mov v22.s[1], v4.s[0]
	fmul s4, s4, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s5, s6, s16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	ext v3.16b, v3.16b, v3.16b, #4
	fmul v0.4s, v2.4s, v0.4s
	fmul v7.4s, v7.4s, v17.4s
	dup v17.4s, v19.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	mov v1.s[3], v23.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov v22.d[1], v20.d[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s4, s5, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	zip1 v17.4s, v19.4s, v17.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v3.4s, v3.4s, v18.4s
	rev64 v7.4s, v7.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s4, [x0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.4s, v22.4s, v17.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v1.4s, v1.4s, v7.4s
	fadd v0.4s, v1.4s, v0.4s
	fadd v1.4s, v3.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stur q0, [x0, #4]
	stur q1, [x0, #20]
	//APP
	//NO_APP
		// benches/gungraun.rs:254
		}
	ret
