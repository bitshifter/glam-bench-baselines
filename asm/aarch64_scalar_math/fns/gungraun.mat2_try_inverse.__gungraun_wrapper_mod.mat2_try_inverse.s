.section .text.gungraun::mat2_try_inverse::__gungraun_wrapper_mod::mat2_try_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat2_try_inverse::__gungraun_wrapper_mod::mat2_try_inverse,@function
gungraun::mat2_try_inverse::__gungraun_wrapper_mod::mat2_try_inverse:
	.cfi_startproc
		// src/f32/scalar/mat2.rs:286
		self.x_axis.x * self.y_axis.y - self.x_axis.y * self.y_axis.x
	ldr q0, [x1]
	ext v1.16b, v0.16b, v0.16b, #8
	rev64 v1.2s, v1.2s
	fmul v1.2s, v0.2s, v1.2s
	dup v2.2s, v1.s[1]
	fsub v1.2s, v1.2s, v2.2s
		// src/f32/scalar/mat2.rs:305
		if det == 0.0 {
	fcmp s1, #0.0
	b.ne .LBB228_2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str wzr, [x0]
	stur q0, [x0, #4]
	//APP
	//NO_APP
		// benches/gungraun.rs:198
		}
	ret
.LBB228_2:
	fmov s2, #1.00000000
	mov w8, #1
		// src/f32/scalar/mat2.rs:311
		let inv_det = 1.0 / det;
	fdiv s1, s2, s1
		// src/f32/scalar/mat2.rs:315
		self.x_axis.y * -inv_det,
	fneg s2, s1
		// src/f32/scalar/mat2.rs:317
		self.x_axis.x * inv_det,
	mov v1.s[1], v2.s[0]
	rev64 v2.4s, v1.4s
	zip1 v1.4s, v1.4s, v2.4s
		// src/f32/scalar/mat2.rs:314
		self.y_axis.y * inv_det,
	fmul v1.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov v0.16b, v1.16b
	mov v0.s[0], v1.s[3]
	mov v0.s[3], v1.s[0]
	str w8, [x0]
	stur q0, [x0, #4]
	//APP
	//NO_APP
		// benches/gungraun.rs:198
		}
	ret
