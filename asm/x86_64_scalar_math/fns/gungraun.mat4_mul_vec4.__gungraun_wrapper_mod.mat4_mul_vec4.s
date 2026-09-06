.section .text.gungraun::mat4_mul_vec4::__gungraun_wrapper_mod::mat4_mul_vec4,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_mul_vec4::__gungraun_wrapper_mod::mat4_mul_vec4,@function
gungraun::mat4_mul_vec4::__gungraun_wrapper_mod::mat4_mul_vec4:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:1363
		let mut res = self.x_axis.mul(rhs.x);
	movups xmm0, xmmword ptr [rdx]
		// benches/gungraun.rs:365
		black_box(m * v)
	movups xmm1, xmmword ptr [rsi]
	movups xmm2, xmmword ptr [rsi + 16]
	movups xmm3, xmmword ptr [rsi + 32]
	movups xmm4, xmmword ptr [rsi + 48]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm5, xmm0
	shufps xmm5, xmm0, 0
	mulps xmm5, xmm1
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 85
	mulps xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm1, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm2, xmm0
	shufps xmm2, xmm0, 170
	mulps xmm2, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm2, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm0, xmm0, 255
	mulps xmm0, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:366
		}
	ret
