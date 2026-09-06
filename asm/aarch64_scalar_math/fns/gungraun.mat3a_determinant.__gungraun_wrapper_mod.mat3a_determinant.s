.section .text.gungraun::mat3a_determinant::__gungraun_wrapper_mod::mat3a_determinant,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_determinant::__gungraun_wrapper_mod::mat3a_determinant,@function
gungraun::mat3a_determinant::__gungraun_wrapper_mod::mat3a_determinant:
		// benches/gungraun.rs:269
		#[bench::args(mat3a())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// src/f32/scalar/mat3a.rs:583
		self.z_axis.dot(self.x_axis.cross(self.y_axis))
	ldr d0, [x0]
	ldr d1, [x0, #16]
	add x8, sp, #12
	ldp s7, s4, [x0, #20]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	dup v2.2s, v0.s[0]
	dup v3.2s, v1.s[0]
		// src/f32/scalar/mat3a.rs:583
		self.z_axis.dot(self.x_axis.cross(self.y_axis))
	ldp s6, s5, [x0, #4]
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	mov v2.s[0], v5.s[0]
	mov v3.s[0], v4.s[0]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fmul s4, s6, s4
	fmul s5, s5, s7
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fmul v1.2s, v2.2s, v1.2s
	fmul v0.2s, v0.2s, v3.2s
		// src/f32/scalar/mat3a.rs:583
		self.z_axis.dot(self.x_axis.cross(self.y_axis))
	ldur d3, [x0, #36]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	fsub s2, s4, s5
		// src/f32/scalar/vec3a.rs:275
		self.x * rhs.y - rhs.x * self.y,
	fsub v0.2s, v1.2s, v0.2s
		// src/f32/scalar/mat3a.rs:583
		self.z_axis.dot(self.x_axis.cross(self.y_axis))
	ldr s1, [x0, #32]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s1, s1, s2
	fmul v0.2s, v3.2s, v0.2s
	fadd s1, s1, s0
	mov s0, v0.s[1]
	fadd s0, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:272
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
