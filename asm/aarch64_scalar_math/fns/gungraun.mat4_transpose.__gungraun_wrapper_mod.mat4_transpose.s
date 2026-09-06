.section .text.gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose,"ax",@progbits
	.p2align	2
.type	gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose,@function
gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:619
		x_axis: Vec4::new(self.x_axis.x, self.y_axis.x, self.z_axis.x, self.w_axis.x),
	ldr d3, [x1, #48]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov x8, x0
	ldr d0, [x1]
	ldr d1, [x1, #16]
	ldr d2, [x1, #32]
	st4 { v0.2s, v1.2s, v2.2s, v3.2s }, [x8], #32
		// src/f32/scalar/mat4.rs:621
		z_axis: Vec4::new(self.x_axis.z, self.y_axis.z, self.z_axis.z, self.w_axis.z),
	ldr d3, [x1, #56]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	ldr d0, [x1, #8]
	ldr d1, [x1, #24]
	ldr d2, [x1, #40]
	st4 { v0.2s, v1.2s, v2.2s, v3.2s }, [x8]
	//APP
	//NO_APP
		// benches/gungraun.rs:347
		}
	ret
