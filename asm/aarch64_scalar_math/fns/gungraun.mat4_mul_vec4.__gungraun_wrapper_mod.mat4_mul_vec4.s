.section .text.gungraun::mat4_mul_vec4::__gungraun_wrapper_mod::mat4_mul_vec4,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_mul_vec4::__gungraun_wrapper_mod::mat4_mul_vec4,@function
gungraun::mat4_mul_vec4::__gungraun_wrapper_mod::mat4_mul_vec4:
	.cfi_startproc
		// benches/gungraun.rs:365
		black_box(m * v)
	ldp q2, q3, [x1]
		// src/f32/scalar/mat4.rs:1363
		let mut res = self.x_axis.mul(rhs.x);
	ldr d0, [x2]
		// src/f32/scalar/mat4.rs:1364
		res = res.add(self.y_axis.mul(rhs.y));
	ldur d1, [x2, #4]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.4s, v2.4s, v0.s[0]
	fmul v1.4s, v3.4s, v1.s[0]
		// src/f32/scalar/mat4.rs:1365
		res = res.add(self.z_axis.mul(rhs.z));
	ldr d2, [x2, #8]
		// benches/gungraun.rs:365
		black_box(m * v)
	ldp q3, q4, [x1, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.4s, v3.4s, v2.s[0]
		// src/f32/scalar/mat4.rs:1366
		res = res.add(self.w_axis.mul(rhs.w));
	ldr s2, [x2, #12]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v1.4s, v4.4s, v2.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:366
		}
	ret
