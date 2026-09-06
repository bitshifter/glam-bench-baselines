.section .text.gungraun::mat4_transform_point3::__gungraun_wrapper_mod::mat4_transform_point3,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_transform_point3::__gungraun_wrapper_mod::mat4_transform_point3,@function
gungraun::mat4_transform_point3::__gungraun_wrapper_mod::mat4_transform_point3:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:1302
		let mut res = self.x_axis.mul(rhs.x);
	ldp s0, s1, [x2]
	ldr d2, [x1]
		// src/f32/scalar/mat4.rs:1303
		res = self.y_axis.mul(rhs.y).add(res);
	ldr d3, [x1, #16]
		// src/f32/scalar/mat4.rs:1302
		let mut res = self.x_axis.mul(rhs.x);
	ldr s4, [x1, #8]
		// src/f32/scalar/mat4.rs:1303
		res = self.y_axis.mul(rhs.y).add(res);
	ldr s5, [x1, #24]
		// src/f32/scalar/mat4.rs:1304
		res = self.z_axis.mul(rhs.z).add(res);
	ldr s6, [x1, #40]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.2s, v2.2s, v0.s[0]
	fmul v3.2s, v3.2s, v1.s[0]
	fmul s0, s4, s0
	fmul s1, s5, s1
		// src/f32/scalar/mat4.rs:1304
		res = self.z_axis.mul(rhs.z).add(res);
	ldr s4, [x2, #8]
	ldr d5, [x1, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v2.2s, v2.2s, v3.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v3.2s, v5.2s, v4.s[0]
	fmul s4, s6, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s0, s0, s1
	fadd v1.2s, v2.2s, v3.2s
		// src/f32/scalar/mat4.rs:1305
		res = self.w_axis.add(res);
	ldr d2, [x1, #48]
	ldr s3, [x1, #56]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s0, s0, s4
	fadd v1.2s, v2.2s, v1.2s
	fadd s0, s0, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d1, [x0]
	str s0, [x0, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:396
		}
	ret
