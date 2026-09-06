.section .text.gungraun::mat3_mul_vec3::__gungraun_wrapper_mod::mat3_mul_vec3,"ax",@progbits
	.p2align	2
.type	gungraun::mat3_mul_vec3::__gungraun_wrapper_mod::mat3_mul_vec3,@function
gungraun::mat3_mul_vec3::__gungraun_wrapper_mod::mat3_mul_vec3:
	.cfi_startproc
		// src/f32/mat3.rs:700
		let mut res = self.x_axis.mul(rhs.x);
	ldp s0, s1, [x2]
		// benches/gungraun.rs:259
		black_box(m * v)
	ldr d2, [x1]
	ldur d3, [x1, #12]
	ldr s4, [x1, #8]
	ldr s5, [x1, #20]
	ldr s6, [x1, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.2s, v2.2s, v0.s[0]
	fmul v3.2s, v3.2s, v1.s[0]
	fmul s0, s4, s0
	fmul s1, s5, s1
		// src/f32/mat3.rs:702
		res = res.add(self.z_axis.mul(rhs.z));
	ldr s4, [x2, #8]
		// benches/gungraun.rs:259
		black_box(m * v)
	ldr d5, [x1, #24]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v5.2s, v5.2s, v4.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v2.2s, v2.2s, v3.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s3, s6, s4
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s0, s0, s1
	fadd v1.2s, v2.2s, v5.2s
	fadd s0, s0, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d1, [x0]
	str s0, [x0, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:260
		}
	ret
