.section .text.gungraun::quat_is_near_identity::__gungraun_wrapper_mod::quat_is_near_identity,"ax",@progbits
	.p2align	2
.type	gungraun::quat_is_near_identity::__gungraun_wrapper_mod::quat_is_near_identity,@function
gungraun::quat_is_near_identity::__gungraun_wrapper_mod::quat_is_near_identity:
		// benches/gungraun.rs:435
		#[bench::args(quat())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// src/f32/neon/quat.rs:644
		math::abs(self.w) > THRESHOLD
	mov s0, v0.s[3]
	mov w8, #65519
	movk w8, #16255, lsl #16
	fmov s1, w8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	fabs s0, s0
		// src/f32/neon/quat.rs:644
		math::abs(self.w) > THRESHOLD
	fcmp s0, s1
	cset w8, gt
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	strb w8, [sp, #12]
	add x8, sp, #12
	//APP
	//NO_APP
		// benches/gungraun.rs:438
		}
	ldrb w0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
