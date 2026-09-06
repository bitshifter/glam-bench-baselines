.section .text.gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse,@function
gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse:
	.cfi_startproc
		// benches/gungraun.rs:431
		black_box(q.inverse())
	ldp s1, s2, [x1, #8]
	ldr d0, [x1]
		// src/f32/scalar/quat.rs:541
		x: -self.x,
	fneg v0.2s, v0.2s
		// src/f32/scalar/quat.rs:543
		z: -self.z,
	fneg s1, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d0, [x0]
	stp s1, s2, [x0, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:432
		}
	ret
