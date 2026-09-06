.section .text.gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp,"ax",@progbits
	.p2align	4
.type	gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp,@function
gungraun::quat_slerp::__gungraun_wrapper_mod::quat_slerp:
		// benches/gungraun.rs:460
		#[bench::orthogonal(quat(), quat_rot_x_180(), bb_f32())]
	.cfi_startproc
	push r14
	.cfi_def_cfa_offset 16
	push rbx
	.cfi_def_cfa_offset 24
	sub rsp, 88
	.cfi_def_cfa_offset 112
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	movaps xmm5, xmm0
	mov rbx, rdi
		// src/f32/scalar/quat.rs:762
		let mut dot = self.dot(end);
	movups xmm4, xmmword ptr [rsi]
	movups xmm3, xmmword ptr [rdx]
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	movaps xmm0, xmm4
	mulps xmm0, xmm3
	movaps xmm1, xmm0
	movaps xmm2, xmm0
	shufps xmm2, xmm0, 85
	addss xmm2, xmm0
	shufps xmm0, xmm0, 255
	movhlps xmm1, xmm1
	addss xmm2, xmm1
	addss xmm2, xmm0
		// src/f32/scalar/quat.rs:763
		if dot < 0.0 {
	movaps xmm1, xmmword ptr [rip + .LCPI148_0]
	movaps xmm0, xmm2
	xorps xmm0, xmm1
	ucomiss xmm0, xmm2
	maxss xmm0, xmm2
	jbe .LBB148_2
	xorps xmm3, xmm1
.LBB148_2:
		// src/f32/scalar/quat.rs:769
		if dot > DOT_THRESHOLD {
	ucomiss xmm0, dword ptr [rip + .LCPI148_1]
	jbe .LBB148_3
	movss xmm6, dword ptr [rip + .LCPI148_3]
		// src/f32/scalar/quat.rs:705
		(self * (1.0 - s) + end * s).normalize()
	movaps xmm0, xmm6
	subss xmm0, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm5, xmm5, 0
	mulps xmm5, xmm3
	shufps xmm0, xmm0, 0
	mulps xmm0, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm0, xmm5
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	movaps xmm1, xmm0
	mulps xmm1, xmm0
	movaps xmm2, xmm1
	movaps xmm3, xmm1
	shufps xmm3, xmm1, 85
	addss xmm3, xmm1
	shufps xmm1, xmm1, 255
	movhlps xmm2, xmm2
	addss xmm3, xmm2
	addss xmm3, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm1, xmm1
	sqrtss xmm1, xmm3
		// src/f32/scalar/vec4.rs:630
		1.0 / self.length()
	divss xmm6, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm6, xmm6, 0
	mulps xmm6, xmm0
	jmp .LBB148_5
.LBB148_3:
	movaps xmm2, xmmword ptr [rip + .LCPI148_2]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	andps xmm2, xmm0
	movss xmm1, dword ptr [rip + .LCPI148_4]
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI148_5]
	movss xmm6, dword ptr [rip + .LCPI148_3]
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI148_6]
	movaps xmmword ptr [rsp + 64], xmm3
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	movaps xmm3, xmm6
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI148_7]
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	subss xmm3, xmm2
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI148_8]
	movaps xmmword ptr [rsp + 48], xmm4
		// src/f32/math.rs:9
		if omx < 0.0 {
	xorps xmm4, xmm4
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI148_9]
		// src/f32/math.rs:9
		if omx < 0.0 {
	maxss xmm4, xmm3
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI148_10]
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI148_11]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm2, xmm2
	sqrtss xmm2, xmm4
		// src/f32/math.rs:25
		result *= root;
	mulss xmm1, xmm2
	movss xmm2, dword ptr [rip + .LCPI148_12]
		// src/f32/math.rs:28
		if nonnegative {
	subss xmm2, xmm1
	xorps xmm3, xmm3
	cmpnless xmm3, xmm0
	movaps xmm0, xmm3
	andnps xmm0, xmm1
	andps xmm3, xmm2
	orps xmm3, xmm0
	movaps xmmword ptr [rsp + 16], xmm3
		// src/f32/scalar/quat.rs:734
		let scale1 = math::sin(theta * (1.0 - s));
	movaps xmm0, xmm6
	subss xmm0, xmm5
	mulss xmm0, xmm3
	mov r14, qword ptr [rip + sinf@GOTPCREL]
	movaps xmmword ptr [rsp], xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	call r14
	movaps xmmword ptr [rsp + 32], xmm0
	movaps xmm0, xmmword ptr [rsp + 16]
		// src/f32/scalar/quat.rs:735
		let scale2 = math::sin(theta * s);
	mulss xmm0, dword ptr [rsp]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	call r14
	movaps xmmword ptr [rsp], xmm0
	movaps xmm0, xmmword ptr [rsp + 16]
	call r14
	movss xmm6, dword ptr [rip + .LCPI148_3]
	movaps xmm1, xmmword ptr [rsp + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm1, xmm1, 0
	movaps xmm2, xmmword ptr [rsp + 48]
	mulps xmm2, xmm1
	movaps xmm3, xmmword ptr [rsp]
	shufps xmm3, xmm3, 0
	movaps xmm1, xmmword ptr [rsp + 64]
	mulps xmm1, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm1, xmm2
		// src/f32/scalar/quat.rs:737
		((self * scale1) + (end * scale2)) * (1.0 / theta_sin)
	divss xmm6, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm6, xmm6, 0
	mulps xmm6, xmm1
.LBB148_5:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rbx], xmm6
	#APP
	#NO_APP
		// benches/gungraun.rs:465
		}
	add rsp, 88
	.cfi_def_cfa_offset 24
	pop rbx
	.cfi_def_cfa_offset 16
	pop r14
	.cfi_def_cfa_offset 8
	ret
