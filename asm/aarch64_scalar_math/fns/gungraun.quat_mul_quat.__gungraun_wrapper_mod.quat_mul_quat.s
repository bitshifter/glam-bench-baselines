.section .text.gungraun::quat_mul_quat::__gungraun_wrapper_mod::quat_mul_quat,"ax",@progbits
	.p2align	2
.type	gungraun::quat_mul_quat::__gungraun_wrapper_mod::quat_mul_quat,@function
gungraun::quat_mul_quat::__gungraun_wrapper_mod::quat_mul_quat:
	.cfi_startproc
		// src/f32/scalar/quat.rs:837
		let (x1, y1, z1, w1) = rhs.into();
	ldr q0, [x2]
		// src/f32/scalar/quat.rs:836
		let (x0, y0, z0, w0) = self.into();
	ldr d3, [x1]
	ldr s4, [x1, #12]
		// src/f32/scalar/quat.rs:839
		w0 * x1 + x0 * w1 + y0 * z1 - z0 * y1,
	rev64 v1.4s, v0.4s
	fmul v4.4s, v0.4s, v4.s[0]
	ext v0.16b, v0.16b, v0.16b, #8
	ext v2.16b, v1.16b, v1.16b, #8
	fmul v2.4s, v2.4s, v3.s[0]
	fadd v3.4s, v4.4s, v2.4s
	fsub v2.4s, v4.4s, v2.4s
		// src/f32/scalar/quat.rs:836
		let (x0, y0, z0, w0) = self.into();
	ldur d4, [x1, #4]
		// src/f32/scalar/quat.rs:839
		w0 * x1 + x0 * w1 + y0 * z1 - z0 * y1,
	fmul v0.4s, v0.4s, v4.s[0]
	rev64 v3.4s, v3.4s
	trn2 v2.4s, v3.4s, v2.4s
	fadd v3.4s, v2.4s, v0.4s
	fsub v0.4s, v2.4s, v0.4s
		// src/f32/scalar/quat.rs:836
		let (x0, y0, z0, w0) = self.into();
	ldr d2, [x1, #8]
		// src/f32/scalar/quat.rs:839
		w0 * x1 + x0 * w1 + y0 * z1 - z0 * y1,
	mov v3.d[1], v0.d[1]
	fmul v0.4s, v1.4s, v2.s[0]
	fsub v1.4s, v3.4s, v0.4s
	fadd v0.4s, v3.4s, v0.4s
	mov v0.s[0], v1.s[0]
	mov v0.s[3], v1.s[3]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:408
		}
	ret
