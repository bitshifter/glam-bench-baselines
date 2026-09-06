.section .text.gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose,@function
gungraun::mat3a_transpose::__gungraun_wrapper_mod::mat3a_transpose:
	.cfi_startproc
		// src/f32/scalar/mat3a.rs:566
		x_axis: Vec3A::new(self.x_axis.x, self.y_axis.x, self.z_axis.x),
	ldp s0, s3, [x1]
	ldp s1, s4, [x1, #16]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s0, s1, [x0]
		// src/f32/scalar/mat3a.rs:566
		x_axis: Vec3A::new(self.x_axis.x, self.y_axis.x, self.z_axis.x),
	ldp s2, s0, [x1, #32]
		// src/f32/scalar/mat3a.rs:568
		z_axis: Vec3A::new(self.x_axis.z, self.y_axis.z, self.z_axis.z),
	ldr s1, [x1, #8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s3, s4, [x0, #16]
	stp s2, s2, [x0, #8]
		// src/f32/scalar/mat3a.rs:568
		z_axis: Vec3A::new(self.x_axis.z, self.y_axis.z, self.z_axis.z),
	ldr s2, [x1, #24]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s0, s0, [x0, #24]
		// src/f32/scalar/mat3a.rs:568
		z_axis: Vec3A::new(self.x_axis.z, self.y_axis.z, self.z_axis.z),
	ldr s0, [x1, #40]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s1, s2, [x0, #32]
	stp s0, s0, [x0, #40]
	//APP
	//NO_APP
		// benches/gungraun.rs:291
		}
	ret
