.section .text.gungraun::mat3_transpose::__gungraun_wrapper_mod::mat3_transpose,"ax",@progbits
	.p2align	2
.type	gungraun::mat3_transpose::__gungraun_wrapper_mod::mat3_transpose,@function
gungraun::mat3_transpose::__gungraun_wrapper_mod::mat3_transpose:
	.cfi_startproc
		// src/f32/mat3.rs:498
		x_axis: Vec3::new(self.x_axis.x, self.y_axis.x, self.z_axis.x),
	ldp q0, q1, [x1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	ext v2.16b, v0.16b, v1.16b, #4
	ext v3.16b, v1.16b, v0.16b, #4
	trn2 v1.4s, v2.4s, v1.4s
	trn2 v0.4s, v3.4s, v0.4s
		// src/f32/mat3.rs:500
		z_axis: Vec3::new(self.x_axis.z, self.y_axis.z, self.z_axis.z),
	ldr s2, [x1, #32]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s2, [x0, #32]
	ext v1.16b, v1.16b, v1.16b, #8
	ext v0.16b, v0.16b, v0.16b, #8
	stp q0, q1, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:241
		}
	ret
