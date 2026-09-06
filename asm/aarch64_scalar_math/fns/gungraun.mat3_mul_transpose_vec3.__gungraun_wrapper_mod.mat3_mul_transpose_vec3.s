.section .text.gungraun::mat3_mul_transpose_vec3::__gungraun_wrapper_mod::mat3_mul_transpose_vec3,"ax",@progbits
	.p2align	2
.type	gungraun::mat3_mul_transpose_vec3::__gungraun_wrapper_mod::mat3_mul_transpose_vec3,@function
gungraun::mat3_mul_transpose_vec3::__gungraun_wrapper_mod::mat3_mul_transpose_vec3:
	.cfi_startproc
		// src/f32/mat3.rs:718
		self.x_axis.dot(rhs),
	ldp s0, s3, [x2]
	ldp s1, s2, [x1]
	ldp s4, s5, [x1, #8]
		// src/f32/mat3.rs:719
		self.y_axis.dot(rhs),
	ldp s6, s17, [x1, #16]
		// src/f32/mat3.rs:720
		self.z_axis.dot(rhs),
	ldp s7, s16, [x1, #24]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s1, s1, s0
	fmul s2, s2, s3
	fmul s5, s0, s5
	fmul s6, s3, s6
	fmul s0, s0, s7
	fmul s3, s3, s16
		// src/f32/mat3.rs:718
		self.x_axis.dot(rhs),
	ldr s7, [x2, #8]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s1, s1, s2
		// src/f32/mat3.rs:720
		self.z_axis.dot(rhs),
	ldr s2, [x1, #32]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s4, s4, s7
	fadd s5, s5, s6
	fmul s6, s7, s17
	fmul s2, s7, s2
	fadd s0, s0, s3
	fadd s1, s1, s4
	fadd s3, s5, s6
	fadd s0, s0, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s1, s3, [x0]
	str s0, [x0, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:266
		}
	ret
