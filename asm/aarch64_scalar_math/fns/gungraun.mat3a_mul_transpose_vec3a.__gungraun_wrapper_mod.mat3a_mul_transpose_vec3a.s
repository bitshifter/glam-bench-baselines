.section .text.gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a,@function
gungraun::mat3a_mul_transpose_vec3a::__gungraun_wrapper_mod::mat3a_mul_transpose_vec3a:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:794
		self.x_axis.dot(rhs),
	ldr d0, [x1]
	ldr d1, [x2]
		// src/f32/scalar/mat3a.rs:795
		self.y_axis.dot(rhs),
	add x8, x1, #24
	ldr d2, [x1, #16]
		// src/f32/scalar/mat3a.rs:796
		self.z_axis.dot(rhs),
	ldp s5, s6, [x1, #32]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	rev64 v3.2s, v1.2s
	ext v4.8b, v0.8b, v2.8b, #4
	mov v0.s[1], v2.s[1]
		// src/f32/scalar/mat3a.rs:794
		self.x_axis.dot(rhs),
	ldr d2, [x1, #8]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	ld1 { v2.s }[1], [x8]
	fmul v3.2s, v3.2s, v4.2s
	fmul v0.2s, v1.2s, v0.2s
	fmul s4, s5, s1
	fmul s1, s6, v1.s[1]
		// src/f32/scalar/mat3a.rs:794
		self.x_axis.dot(rhs),
	ldr s5, [x2, #8]
		// src/f32/scalar/mat3a.rs:796
		self.z_axis.dot(rhs),
	ldr s6, [x1, #40]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v2.2s, v2.2s, v5.s[0]
	fadd v0.2s, v3.2s, v0.2s
	fmul s3, s5, s6
	fadd s1, s4, s1
	fadd v0.2s, v0.2s, v2.2s
	fadd s1, s1, s3
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d0, [x0]
	stp s1, s1, [x0, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:316
		}
	ret
