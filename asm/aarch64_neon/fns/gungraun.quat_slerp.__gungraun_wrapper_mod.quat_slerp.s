.section .text.gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp,"ax",@progbits
	.p2align	2
.type	gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp,@function
gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v3.4s, v0.4s, v1.4s
		// src/f32/neon/quat.rs:782
		if dot < 0.0 {
	fneg v7.4s, v1.4s
	mov w8, #65534
	movk w8, #16255, lsl #16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:597
		unsafe { _vaddvq_f32(a) }
	faddp v3.4s, v3.4s, v3.4s
	faddp s5, v3.2s
	movi d3, #0000000000000000
		// src/f32/neon/quat.rs:782
		if dot < 0.0 {
	fcmgt v4.4s, v3.4s, v5.4s
	fneg s6, s5
	fcmp s5, #0.0
	dup v16.4s, v4.s[0]
	fcsel s4, s6, s5, mi
	fmov s6, w8
	bit v1.16b, v7.16b, v16.16b
		// src/f32/neon/quat.rs:788
		if dot > DOT_THRESHOLD {
	fcmp s4, s6
	b.le .LBB148_2
	fmov s3, #1.00000000
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v1.4s, v1.4s, v2.s[0]
		// src/f32/neon/quat.rs:703
		(self * (1.0 - s) + end * s).normalize()
	fsub s4, s3, s2
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v0.4s, v0.4s, v4.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v1.4s, v0.4s, v0.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:597
		unsafe { _vaddvq_f32(a) }
	faddp v1.4s, v1.4s, v1.4s
	faddp s1, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s1, s1
		// src/f32/neon/vec4.rs:585
		1.0 / self.length()
	fdiv s1, s3, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32798
		unsafe { simd_mul(a, vdupq_n_f32(b)) }
	fmul v0.4s, v0.4s, v1.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:465
		}
	ret
.LBB148_2:
	mov w8, #31276
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	fabs s5, s5
	mov w9, #63875
	movk w8, #47781, lsl #16
	movk w9, #15906, lsl #16
	fmov s6, w8
	mov w8, #37061
	movk w8, #15322, lsl #16
	fmov s7, w8
	mov w8, #64614
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s6, s5, s6
	movk w8, #48267, lsl #16
	fadd s6, s6, s7
	fmov s7, w8
	mov w8, #4344
	movk w8, #15613, lsl #16
	fmul s6, s5, s6
	fadd s6, s6, s7
	fmov s7, w8
	mov w8, #33682
	movk w8, #48461, lsl #16
	fmov s17, w8
	mov w8, #15006
	movk w8, #15798, lsl #16
	fmul s6, s5, s6
	fadd s6, s6, s7
	fmov s7, #1.00000000
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	fsub s16, s7, s5
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s6, s5, s6
		// src/f32/math.rs:9
		if omx < 0.0 {
	fcmp s16, #0.0
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fadd s6, s6, s17
	fmov s17, w8
	mov w8, #49098
	movk w8, #48731, lsl #16
		// src/f32/math.rs:9
		if omx < 0.0 {
	fcsel s16, s3, s16, mi
		// src/f32/math.rs:28
		if nonnegative {
	fcmp s4, #0.0
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s6, s5, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	fsqrt s16, s16
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fadd s6, s6, s17
	fmov s17, w8
	mov w8, #4058
	movk w8, #16329, lsl #16
	fmul s6, s5, s6
	fadd s6, s6, s17
		// src/f32/neon/quat.rs:743
		let coefs = [1.0 - s, s, 1.0, 0.0];
	fsub s17, s7, s2
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fmul s5, s5, s6
	fmov s6, w8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1731
		crate::intrinsics::read_via_copy(src)
	mov v17.s[1], v2.s[0]
	mov w8, #4059
	movk w8, #16457, lsl #16
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	fadd s5, s5, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1731
		crate::intrinsics::read_via_copy(src)
	mov v17.s[2], v7.s[0]
		// src/f32/math.rs:25
		result *= root;
	fmul s2, s16, s5
	fmov s5, w8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1731
		crate::intrinsics::read_via_copy(src)
	mov v17.s[3], v3.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	dup v3.4s, w9
	mov w9, #4059
	movk w9, #49353, lsl #16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:29996
		unsafe { simd_sub(a, simd_mul(b, c)) }
	dup v4.4s, w9
		// src/f32/math.rs:28
		if nonnegative {
	fsub s5, s5, s2
	fcsel s2, s5, s2, lt
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v2.4s, v17.4s, v2.s[0]
	fmul v3.4s, v2.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:51360
		unsafe { _vrndnq_f32(a) }
	frintn v3.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:29996
		unsafe { simd_sub(a, simd_mul(b, c)) }
	fmul v3.4s, v3.4s, v4.4s
		// src/neon.rs:100
		let rflx = vsubq_f32(vreinterpretq_f32_u32(c), x);
	mvni v4.4s, #128, lsl #24
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:29996
		unsafe { simd_sub(a, simd_mul(b, c)) }
	fadd v2.4s, v2.4s, v3.4s
		// src/neon.rs:100
		let rflx = vsubq_f32(vreinterpretq_f32_u32(c), x);
	dup v3.4s, w8
	mov w8, #4059
	movk w8, #16329, lsl #16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1497
		unsafe { simd_fabs(a) }
	fabs v5.4s, v2.4s
		// src/neon.rs:100
		let rflx = vsubq_f32(vreinterpretq_f32_u32(c), x);
	bif v3.16b, v2.16b, v4.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:6398
		unsafe { simd_le(a, b) }
	dup v4.4s, w8
	mov w8, #13915
	movk w8, #45773, lsl #16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:64859
		unsafe { simd_sub(a, b) }
	fsub v3.4s, v3.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:6398
		unsafe { simd_le(a, b) }
	fcmge v4.4s, v4.4s, v5.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:4374
		transmute(simd_or(
	bif v2.16b, v3.16b, v4.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:28622
		unsafe { simd_add(a, simd_mul(b, c)) }
	dup v4.4s, w8
	mov w8, #47246
	movk w8, #13880, lsl #16
	dup v5.4s, w8
	mov w8, #3057
	movk w8, #47440, lsl #16
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v3.4s, v2.4s, v2.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:28622
		unsafe { simd_add(a, simd_mul(b, c)) }
	fmul v4.4s, v3.4s, v4.4s
	fadd v4.4s, v4.4s, v5.4s
	dup v5.4s, w8
	mov w8, #34950
	movk w8, #15368, lsl #16
	fmul v4.4s, v3.4s, v4.4s
	fadd v4.4s, v4.4s, v5.4s
	dup v5.4s, w8
	mov w8, #43691
	movk w8, #48682, lsl #16
	fmul v4.4s, v3.4s, v4.4s
	fadd v4.4s, v4.4s, v5.4s
	dup v5.4s, w8
	fmul v4.4s, v3.4s, v4.4s
	fadd v4.4s, v4.4s, v5.4s
	fmul v3.4s, v3.4s, v4.4s
	fmov v4.4s, #1.00000000
	fadd v3.4s, v3.4s, v4.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v2.4s, v2.4s, v3.4s
	fmul v0.4s, v0.4s, v2.s[0]
	fmul v1.4s, v1.4s, v2.s[1]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:1874
		unsafe { simd_add(a, b) }
	fadd v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:112
		unsafe { $crate::intrinsics::simd::simd_splat(value) }
	dup v1.4s, v2.s[2]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/generated.rs:7921
		unsafe { simd_div(a, b) }
	fdiv v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:465
		}
	ret
