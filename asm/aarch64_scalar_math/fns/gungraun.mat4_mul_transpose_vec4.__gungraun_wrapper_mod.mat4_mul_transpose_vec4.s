.section .text.gungraun::mat4_mul_transpose_vec4::__gungraun_wrapper_mod::mat4_mul_transpose_vec4,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_mul_transpose_vec4::__gungraun_wrapper_mod::mat4_mul_transpose_vec4,@function
gungraun::mat4_mul_transpose_vec4::__gungraun_wrapper_mod::mat4_mul_transpose_vec4:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:1375
		self.x_axis.dot(rhs),
	ld4 { v0.4s, v1.4s, v2.4s, v3.4s }, [x1]
	ldur d5, [x2, #4]
	ldp d4, d6, [x2]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	fmul v4.4s, v0.4s, v4.s[0]
	fmul v5.4s, v1.4s, v5.s[0]
	fadd v4.4s, v4.4s, v5.4s
	fmul v5.4s, v2.4s, v6.s[0]
		// src/f32/scalar/mat4.rs:1375
		self.x_axis.dot(rhs),
	ldr s6, [x2, #12]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	fmul v0.4s, v3.4s, v6.s[0]
	fadd v4.4s, v4.4s, v5.4s
	fadd v0.4s, v4.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:372
		}
	ret
