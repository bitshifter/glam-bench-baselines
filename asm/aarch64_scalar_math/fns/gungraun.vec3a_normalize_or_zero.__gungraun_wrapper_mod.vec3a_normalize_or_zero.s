.section .text.gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero,@function
gungraun::vec3a_normalize_or_zero::__gungraun_wrapper_mod::vec3a_normalize_or_zero:
	.cfi_startproc
		// benches/gungraun.rs:507
		black_box(v.normalize_or_zero())
	ldr d1, [x1]
	ldur d2, [x1, #4]
	fmov s0, #1.00000000
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v3.2s, v1.2s, v1.2s
	fmul v4.2s, v2.2s, v2.2s
		// src/f32/scalar/vec3a.rs:684
		if rcp.is_finite() && rcp > 0.0 {
	dup v2.2s, v2.s[1]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd v3.2s, v3.2s, v4.2s
	dup v4.2s, v4.s[1]
		// src/f32/scalar/vec3a.rs:684
		if rcp.is_finite() && rcp > 0.0 {
	mov v1.d[1], v2.d[0]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd v3.2s, v3.2s, v4.2s
		// src/f32/scalar/vec3a.rs:684
		if rcp.is_finite() && rcp > 0.0 {
	mov v1.s[3], v2.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s3, s3
		// src/f32/scalar/vec3a.rs:597
		1.0 / self.length()
	fdiv s0, s0, s3
	fmov w8, s0
		// src/f32/scalar/vec3a.rs:684
		if rcp.is_finite() && rcp > 0.0 {
	fmul v0.4s, v1.4s, v0.s[0]
	and w9, w8, #0x7fffffff
	sub w10, w8, #1
	sub w9, w9, #2048, lsl #12
	lsr w9, w9, #24
	cmp w9, #127
	ccmn w8, #1, #4, lo
	mov w8, #8388607
	ccmp w10, w8, #0, le
	cset w8, lo
	dup v3.4h, w8
	ushll v3.4s, v3.4h, #0
	shl v2.4s, v3.4s, #31
	cmlt v1.4s, v2.4s, #0
	and v0.16b, v1.16b, v0.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:508
		}
	ret
