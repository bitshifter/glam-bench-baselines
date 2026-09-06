.section .text.gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose,@function
gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose:
	.cfi_startproc
		// src/f32/neon/mat4.rs:617
		x_axis: Vec4::new(self.x_axis.x, self.y_axis.x, self.z_axis.x, self.w_axis.x),
	ldr q0, [x1]
		// src/f32/neon/mat4.rs:618
		y_axis: Vec4::new(self.x_axis.y, self.y_axis.y, self.z_axis.y, self.w_axis.y),
	ldur q1, [x1, #4]
		// src/f32/neon/vec4.rs:2101
		unsafe { &*(self as *const Self).cast() }
	add x8, x1, #16
		// src/f32/neon/mat4.rs:618
		y_axis: Vec4::new(self.x_axis.y, self.y_axis.y, self.z_axis.y, self.w_axis.y),
	add x9, x1, #20
		// src/f32/neon/mat4.rs:619
		z_axis: Vec4::new(self.x_axis.z, self.y_axis.z, self.z_axis.z, self.w_axis.z),
	ldur q2, [x1, #8]
		// src/f32/neon/mat4.rs:620
		w_axis: Vec4::new(self.x_axis.w, self.y_axis.w, self.z_axis.w, self.w_axis.w),
	ldur q3, [x1, #12]
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	ld1 { v0.s }[1], [x8]
		// src/f32/neon/mat4.rs:619
		z_axis: Vec4::new(self.x_axis.z, self.y_axis.z, self.z_axis.z, self.w_axis.z),
	add x8, x1, #24
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	ld1 { v1.s }[1], [x9]
		// src/f32/neon/mat4.rs:620
		w_axis: Vec4::new(self.x_axis.w, self.y_axis.w, self.z_axis.w, self.w_axis.w),
	add x10, x1, #28
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	ld1 { v2.s }[1], [x8]
		// src/f32/neon/vec4.rs:2101
		unsafe { &*(self as *const Self).cast() }
	add x9, x1, #32
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	ld1 { v3.s }[1], [x10]
		// src/f32/neon/mat4.rs:618
		y_axis: Vec4::new(self.x_axis.y, self.y_axis.y, self.z_axis.y, self.w_axis.y),
	add x8, x1, #36
		// src/f32/neon/mat4.rs:620
		w_axis: Vec4::new(self.x_axis.w, self.y_axis.w, self.z_axis.w, self.w_axis.w),
	add x10, x1, #44
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	ld1 { v0.s }[2], [x9]
		// src/f32/neon/mat4.rs:619
		z_axis: Vec4::new(self.x_axis.z, self.y_axis.z, self.z_axis.z, self.w_axis.z),
	add x9, x1, #40
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	ld1 { v1.s }[2], [x8]
	ld1 { v2.s }[2], [x9]
		// src/f32/neon/vec4.rs:2101
		unsafe { &*(self as *const Self).cast() }
	add x8, x1, #48
		// src/f32/neon/mat4.rs:618
		y_axis: Vec4::new(self.x_axis.y, self.y_axis.y, self.z_axis.y, self.w_axis.y),
	add x9, x1, #52
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	ld1 { v3.s }[2], [x10]
	ld1 { v0.s }[3], [x8]
		// src/f32/neon/mat4.rs:619
		z_axis: Vec4::new(self.x_axis.z, self.y_axis.z, self.z_axis.z, self.w_axis.z),
	add x8, x1, #56
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	ld1 { v1.s }[3], [x9]
		// src/f32/neon/mat4.rs:620
		w_axis: Vec4::new(self.x_axis.w, self.y_axis.w, self.z_axis.w, self.w_axis.w),
	add x9, x1, #60
		// src/f32/neon/vec4.rs:110
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	ld1 { v2.s }[3], [x8]
	ld1 { v3.s }[3], [x9]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp q0, q1, [x0]
	stp q2, q3, [x0, #32]
	//APP
	//NO_APP
		// benches/gungraun.rs:347
		}
	ret
