.section .text.gungraun::mat2_inverse::__gungraun_wrapper_mod::mat2_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat2_inverse::__gungraun_wrapper_mod::mat2_inverse,@function
gungraun::mat2_inverse::__gungraun_wrapper_mod::mat2_inverse:
	.cfi_startproc
		// src/f32/scalar/mat2.rs:286
		self.x_axis.x * self.y_axis.y - self.x_axis.y * self.y_axis.x
	ldr q1, [x1]
	fmov s0, #1.00000000
	ext v2.16b, v1.16b, v1.16b, #8
	rev64 v2.2s, v2.2s
	fmul v2.2s, v1.2s, v2.2s
	dup v3.2s, v2.s[1]
	fsub v2.2s, v2.2s, v3.2s
		// src/f32/scalar/mat2.rs:311
		let inv_det = 1.0 / det;
	fdiv s0, s0, s2
		// src/f32/scalar/mat2.rs:315
		self.x_axis.y * -inv_det,
	fneg s2, s0
		// src/f32/scalar/mat2.rs:314
		self.y_axis.y * inv_det,
	mov v0.s[1], v2.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	mov v2.16b, v1.16b
	mov v2.s[0], v1.s[3]
	rev64 v3.4s, v0.4s
	mov v2.s[3], v1.s[0]
	zip1 v0.4s, v0.4s, v3.4s
	fmul v0.4s, v2.4s, v0.4s
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:178
		}
	ret
