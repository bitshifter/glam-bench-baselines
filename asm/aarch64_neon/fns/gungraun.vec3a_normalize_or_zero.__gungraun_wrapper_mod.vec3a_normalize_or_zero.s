.section .text.gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero,@function
gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero:
	.cfi_startproc
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v1.4s, v0.4s, v0.4s
	mov w10, #127
	faddp s2, v1.2s
	mov s1, v1.s[2]
	fadd s1, s1, s2
	fmov s2, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s1, s1
		// src/f32/neon/vec3a.rs:619
		1.0 / self.length()
	fdiv s1, s2, s1
	fmov w8, s1
		// src/f32/neon/vec3a.rs:706
		if rcp.is_finite() && rcp > 0.0 {
	fmul v0.4s, v0.4s, v1.s[0]
	and w9, w8, #0x7fffffff
	cmn w8, #1
	sub w8, w8, #1
	sub w9, w9, #2048, lsl #12
	lsr w9, w9, #24
	ccmp w9, w10, #2, gt
	mov w9, #8388607
	ccmp w8, w9, #0, hs
	csetm w8, lo
	dup v1.4s, w8
	and v0.16b, v0.16b, v1.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:508
		}
	ret
