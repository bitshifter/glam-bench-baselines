.section .text.gungraun::quat_lerp::__gungraun_wrapper_mod::quat_lerp,"ax",@progbits
	.p2align	2
.type	gungraun::quat_lerp::__gungraun_wrapper_mod::quat_lerp,@function
gungraun::quat_lerp::__gungraun_wrapper_mod::quat_lerp:
	.cfi_startproc
		// src/f32/scalar/quat.rs:724
		let dot = self.dot(end);
	ldr q1, [x1]
	ldr q2, [x2]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	fmul v3.4s, v1.4s, v2.4s
	dup v4.2s, v3.s[1]
	ext v5.16b, v3.16b, v3.16b, #8
	fadd v4.2s, v3.2s, v4.2s
	dup v3.2s, v3.s[3]
	fadd v4.2s, v4.2s, v5.2s
	fmov s5, #-1.00000000
	fadd v3.2s, v4.2s, v3.2s
	fmov s4, #1.00000000
		// src/f32/scalar/quat.rs:725
		let bias = if dot >= 0.0 { 1.0 } else { -1.0 };
	fcmp s3, #0.0
	fcsel s3, s5, s4, lt
		// src/f32/scalar/quat.rs:705
		(self * (1.0 - s) + end * s).normalize()
	fsub s5, s4, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.4s, v2.4s, v3.s[0]
	fmul v1.4s, v1.4s, v5.s[0]
	fmul v0.4s, v2.4s, v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.4s, v1.4s, v0.4s
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	fmul v1.4s, v0.4s, v0.4s
	dup v2.2s, v1.s[1]
	ext v3.16b, v1.16b, v1.16b, #8
	fadd v2.2s, v1.2s, v2.2s
	dup v1.2s, v1.s[3]
	fadd v2.2s, v3.2s, v2.2s
	fadd v1.2s, v1.2s, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s1, s1
		// src/f32/scalar/vec4.rs:630
		1.0 / self.length()
	fdiv s1, s4, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v0.4s, v0.4s, v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:445
		}
	ret
