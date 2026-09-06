.section .text.gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp,"ax",@progbits
	.p2align	2
.type	gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp,@function
gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp:
		// benches/gungraun.rs:460
		#[bench::orthogonal(quat(), quat_rot_x_180(), bb_f32())]
	.cfi_startproc
	sub sp, sp, #112
	.cfi_def_cfa_offset 112
	stp d9, d8, [sp, #64]
	stp x29, x30, [sp, #80]
	str x19, [sp, #96]
	add x29, sp, #80
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	mov v7.16b, v0.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v0.4s, v0.4s, v1.4s
	mov w8, #65534
	movi d16, #0000000000000000
		// src/f32/neon/quat.rs:772
		if dot < 0.0 {
	fneg v5.4s, v1.4s
	movk w8, #16255, lsl #16
	mov x19, x0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:597
		unsafe { _vaddvq_f32(a) }
	faddp v0.4s, v0.4s, v0.4s
	faddp s3, v0.2s
		// src/f32/neon/quat.rs:772
		if dot < 0.0 {
	fcmgt v0.4s, v16.4s, v3.4s
	fneg s4, s3
	fcmp s3, #0.0
	dup v6.4s, v0.s[0]
	fcsel s0, s4, s3, mi
	fmov s4, w8
	bif v5.16b, v1.16b, v6.16b
		// src/f32/neon/quat.rs:778
		if dot > DOT_THRESHOLD {
	fcmp s0, s4
	b.le .LBB148_2
	fmov s0, #1.00000000
		// src/f32/neon/quat.rs:703
		(self * (1.0 - s) + end * s).normalize()
	fsub s1, s0, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v2.4s, v5.4s, v2.s[0]
	fmul v1.4s, v7.4s, v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v1.4s, v1.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v2.4s, v1.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:597
		unsafe { _vaddvq_f32(a) }
	faddp v2.4s, v2.4s, v2.4s
	faddp s2, v2.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s2, s2
		// src/f32/neon/vec4.rs:585
		1.0 / self.length()
	fdiv s0, s0, s2
	b .LBB148_3
.LBB148_2:
	mov w8, #31276
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	fabs s1, s3
	fmov s9, #1.00000000
	movk w8, #47781, lsl #16
	stur q5, [x29, #-32]
	fmov s3, w8
	mov w8, #37061
	stp q2, q7, [sp, #16]
	movk w8, #15322, lsl #16
	fmov s4, w8
	mov w8, #64614
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s3, s1, s3
	movk w8, #48267, lsl #16
	fadd s3, s3, s4
	fmov s4, w8
	mov w8, #4344
	movk w8, #15613, lsl #16
	fmul s3, s1, s3
	fadd s3, s3, s4
	fmov s4, w8
	mov w8, #33682
	movk w8, #48461, lsl #16
	fmov s5, w8
	mov w8, #15006
	movk w8, #15798, lsl #16
	fmul s3, s1, s3
	fadd s3, s3, s4
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	fsub s4, s9, s1
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s3, s1, s3
		// src/f32/math.rs:9
		if omx < 0.0 {
	fcmp s4, #0.0
	fcsel s4, s16, s4, mi
		// src/f32/math.rs:28
		if nonnegative {
	fcmp s0, #0.0
		// src/f32/neon/quat.rs:743
		let scale1 = math::sin(theta * (1.0 - s));
	fsub s0, s9, s2
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fadd s3, s3, s5
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s5, s4
	fmov s4, w8
	mov w8, #49098
	movk w8, #48731, lsl #16
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s3, s1, s3
	fadd s3, s3, s4
	fmov s4, w8
	mov w8, #4058
	movk w8, #16329, lsl #16
	fmul s3, s1, s3
	fadd s3, s3, s4
	fmul s1, s1, s3
	fmov s3, w8
	mov w8, #4059
	movk w8, #16457, lsl #16
	fadd s1, s1, s3
	fmov s3, w8
		// src/f32/math.rs:25
		result *= root;
	fmul s1, s5, s1
		// src/f32/math.rs:28
		if nonnegative {
	fsub s3, s3, s1
	fcsel s8, s3, s1, lt
		// src/f32/neon/quat.rs:743
		let scale1 = math::sin(theta * (1.0 - s));
	fmul s0, s0, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	bl sinf
	ldr q1, [sp, #16]
	str q0, [sp, #16]
		// src/f32/neon/quat.rs:744
		let scale2 = math::sin(theta * s);
	fmul s1, s1, s8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	fmov s0, s1
	bl sinf
	str q0, [sp]
	fmov s0, s8
	bl sinf
	ldp q2, q1, [sp, #16]
		// src/f32/neon/quat.rs:746
		((self * scale1) + (end * scale2)) * (1.0 / theta_sin)
	fdiv s0, s9, s0
	ldr q3, [sp]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v1.4s, v1.4s, v2.s[0]
	ldur q2, [x29, #-32]
	fmul v2.4s, v2.4s, v3.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v1.4s, v1.4s, v2.4s
.LBB148_3:
	fmul v0.4s, v1.4s, v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x19]
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 112
		// benches/gungraun.rs:465
		}
	ldp x29, x30, [sp, #80]
	ldr x19, [sp, #96]
	ldp d9, d8, [sp, #64]
	add sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	.cfi_restore b9
	ret
