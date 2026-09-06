.section .text.gungraun::mat3a_mul_vec3a::__gungraun_wrapper_mod::mat3a_mul_vec3a,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_mul_vec3a::__gungraun_wrapper_mod::mat3a_mul_vec3a,@function
gungraun::mat3a_mul_vec3a::__gungraun_wrapper_mod::mat3a_mul_vec3a:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmov v0.2s, #1.00000000
		// benches/gungraun.rs:309
		black_box(m * v)
	add x8, x1, #24
	add x9, x1, #40
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	ld1 { v1.s }[2], [x9]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	ldur d2, [x2, #4]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	fmov v3.4s, #1.00000000
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	ldr s4, [x2]
		// benches/gungraun.rs:309
		black_box(m * v)
	ldr q5, [x1, #32]
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	ld1 { v0.s }[0], [x8]
		// benches/gungraun.rs:309
		black_box(m * v)
	add x8, x1, #8
		// src/f32/scalar/mat3a.rs:778
		self.x_axis.z * rhs.x + self.y_axis.z * rhs.y + self.z_axis.z * rhs.z,
	ld1 { v1.s }[3], [x8]
	mov v3.s[3], v4.s[0]
	fmul v0.2s, v2.2s, v0.2s
	mov v5.d[1], v1.d[1]
	dup v1.4s, v0.s[1]
	fmul v3.4s, v5.4s, v3.4s
	ext v0.16b, v1.16b, v0.16b, #4
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v1.4s, v3.4s, v0.4s
	fadd v0.4s, v3.4s, v0.4s
		// benches/gungraun.rs:309
		black_box(m * v)
	ldr d3, [x1, #16]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v2.2s, v3.2s, v2.s[0]
	mov v1.s[3], v0.s[3]
		// benches/gungraun.rs:309
		black_box(m * v)
	ldr d0, [x1]
		// src/f32/scalar/mat3a.rs:776
		self.x_axis.x * rhs.x + self.y_axis.x * rhs.y + self.z_axis.x * rhs.z,
	fmul v0.2s, v0.2s, v4.s[0]
	rev64 v3.4s, v1.4s
	fadd v0.2s, v0.2s, v2.2s
	ext v2.16b, v3.16b, v3.16b, #8
	mov v0.d[1], v2.d[0]
	fadd v0.4s, v1.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:310
		}
	ret
