.section .text.gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp,@function
gungraun::vec3a_slerp::__gungraun_wrapper_mod::vec3a_slerp:
		// benches/gungraun.rs:511
		#[bench::general(black_box(Vec3A::X), black_box(Vec3A::Y), bb_f32())]
	.cfi_startproc
	push r14
	.cfi_def_cfa_offset 16
	push rbx
	.cfi_def_cfa_offset 24
	sub rsp, 184
	.cfi_def_cfa_offset 208
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	movaps xmm5, xmm0
	mov rbx, rdi
		// src/f32/scalar/vec3a.rs:1314
		let self_length = self.length();
	movsd xmm11, qword ptr [rsi]
	movsd xmm4, qword ptr [rsi + 4]
	movaps xmm7, xmm4
	shufps xmm7, xmm4, 85
		// src/f32/scalar/vec3a.rs:1315
		let rhs_length = rhs.length();
	movsd xmm8, qword ptr [rdx]
	movsd xmm10, qword ptr [rdx + 4]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm0, xmm8
	unpcklps xmm0, xmm11
	mulps xmm0, xmm0
	movaps xmm2, xmm11
	shufps xmm2, xmm8, 17
	shufps xmm2, xmm8, 226
	mulps xmm2, xmm2
	addps xmm2, xmm0
	movaps xmm1, xmm4
	shufps xmm1, xmm10, 17
	shufps xmm1, xmm10, 226
	movaps xmm0, xmm1
	mulps xmm0, xmm1
	addps xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	sqrtps xmm9, xmm0
	movaps xmm6, xmm9
	shufps xmm6, xmm9, 85
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm12, xmm4
	mulps xmm12, xmm10
	movaps xmm2, xmm11
	mulss xmm2, xmm8
	addss xmm2, xmm12
	shufps xmm12, xmm12, 85
	addss xmm12, xmm2
		// src/f32/scalar/vec3a.rs:1317
		let dot = self.dot(rhs) / (self_length * rhs_length);
	movaps xmm2, xmm6
	mulss xmm2, xmm9
	divss xmm12, xmm2
	movaps xmm2, xmmword ptr [rip + .LCPI158_0]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	andps xmm2, xmm12
	movss xmm3, dword ptr [rip + .LCPI158_1]
		// src/f32/scalar/vec3a.rs:1319
		if math::abs(dot) < 1.0 - 3e-7 {
	ucomiss xmm3, xmm2
	jbe .LBB158_1
	movss xmm3, dword ptr [rip + .LCPI158_6]
	movss xmm1, dword ptr [rip + .LCPI158_9]
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI158_10]
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI158_11]
		// src/f32/math.rs:8
		let mut omx = 1.0 - x;
	subss xmm3, xmm2
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI158_12]
		// src/f32/math.rs:9
		if omx < 0.0 {
	xorps xmm4, xmm4
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI158_13]
		// src/f32/math.rs:9
		if omx < 0.0 {
	maxss xmm4, xmm3
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI158_14]
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI158_15]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm3, xmm3
	sqrtss xmm3, xmm4
		// src/f32/math.rs:17
		((((((-0.001_262_491_1 * x + 0.006_670_09) * x - 0.017_088_126) * x + 0.030_891_88) * x
	mulss xmm1, xmm2
	addss xmm1, dword ptr [rip + .LCPI158_16]
		// src/f32/math.rs:25
		result *= root;
	mulss xmm1, xmm3
	movss xmm2, dword ptr [rip + .LCPI158_3]
		// src/f32/math.rs:28
		if nonnegative {
	subss xmm2, xmm1
	xorps xmm0, xmm0
	cmpnless xmm0, xmm12
	movaps xmm3, xmm0
	andnps xmm3, xmm1
	andps xmm0, xmm2
	orps xmm0, xmm3
	movaps xmmword ptr [rsp + 32], xmm0
	mov r14, qword ptr [rip + sinf@GOTPCREL]
	movaps xmmword ptr [rsp + 16], xmm5
	movaps xmmword ptr [rsp + 128], xmm11
	movaps xmmword ptr [rsp + 80], xmm6
	movaps xmmword ptr [rsp + 64], xmm7
	movaps xmmword ptr [rsp + 144], xmm8
	movaps xmmword ptr [rsp + 48], xmm9
	movaps xmmword ptr [rsp + 160], xmm10
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	call r14
	movss dword ptr [rsp + 112], xmm0
		// src/f32/scalar/vec3a.rs:1324
		let t1 = math::sin(theta * (1.0 - s));
	movss xmm0, dword ptr [rip + .LCPI158_6]
	subss xmm0, dword ptr [rsp + 16]
	mulss xmm0, dword ptr [rsp + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	call r14
	movaps xmmword ptr [rsp + 96], xmm0
	movaps xmm0, xmmword ptr [rsp + 32]
		// src/f32/scalar/vec3a.rs:1325
		let t2 = math::sin(theta * s);
	mulss xmm0, dword ptr [rsp + 16]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	call r14
	movaps xmm2, xmmword ptr [rsp + 48]
		// src/f32/float.rs:8
		self + (rhs - self) * t
	movaps xmm1, xmm2
	movaps xmm3, xmmword ptr [rsp + 80]
	subss xmm1, xmm3
	mulss xmm1, dword ptr [rsp + 16]
	addss xmm1, xmm3
		// src/f32/scalar/vec3a.rs:1331
		+ rhs * (result_length / rhs_length) * t2)
	shufps xmm1, xmm1, 0
	divps xmm1, xmm2
	movaps xmm2, xmm1
	movlhps xmm2, xmm1
	movaps xmm8, xmmword ptr [rsp + 128]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm3, xmm8
	movaps xmm5, xmmword ptr [rsp + 144]
	shufps xmm3, xmm5, 1
	movaps xmm7, xmmword ptr [rsp + 64]
	movaps xmm4, xmm7
	movaps xmm6, xmmword ptr [rsp + 160]
	shufps xmm4, xmm6, 212
	shufps xmm3, xmm4, 34
	mulps xmm3, xmm2
	shufps xmm5, xmm8, 1
	shufps xmm6, xmm7, 197
	shufps xmm5, xmm6, 34
	shufps xmm1, xmm1, 17
	mulps xmm1, xmm5
	unpcklps xmm0, xmmword ptr [rsp + 96]
	movaps xmm2, xmm0
	movlhps xmm2, xmm0
	mulps xmm2, xmm3
	shufps xmm0, xmm0, 17
	mulps xmm0, xmm1
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm0, xmm2
	movss xmm11, dword ptr [rip + .LCPI158_6]
		// src/f32/scalar/vec3a.rs:1332
		* (1.0 / sin_theta);
	divss xmm11, dword ptr [rsp + 112]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm11, xmm11, 0
	mulps xmm11, xmm0
		// src/f32/scalar/vec3a.rs:1347
		}
	jmp .LBB158_9
.LBB158_1:
	xorps xmm2, xmm2
		// src/f32/scalar/vec3a.rs:1334
		if dot < 0.0 {
	ucomiss xmm2, xmm12
	jbe .LBB158_2
	movaps xmmword ptr [rsp + 48], xmm9
	movaps xmmword ptr [rsp + 64], xmm7
	movaps xmmword ptr [rsp + 80], xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	movaps xmm0, xmmword ptr [rip + .LCPI158_0]
	movaps xmmword ptr [rsp + 128], xmm11
	andps xmm11, xmm0
	movaps xmmword ptr [rsp + 112], xmm11
	andps xmm0, xmm4
	movaps xmmword ptr [rsp + 96], xmm0
	movss xmm0, dword ptr [rip + .LCPI158_3]
	movaps xmmword ptr [rsp + 16], xmm5
		// src/f32/scalar/vec3a.rs:1339
		let rotation = Quat::from_axis_angle(axis, core::f32::consts::PI * s);
	mulss xmm0, xmm5
		// src/f32/scalar/quat.rs:146
		let (s, c) = math::sin_cos(angle * 0.5);
	mulss xmm0, dword ptr [rip + .LCPI158_4]
	lea rdi, [rsp + 12]
	lea rsi, [rsp + 8]
	movaps xmmword ptr [rsp + 32], xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	call qword ptr [rip + sincosf@GOTPCREL]
	movaps xmm6, xmmword ptr [rsp + 112]
	movaps xmm8, xmmword ptr [rsp + 96]
	movaps xmm14, xmmword ptr [rsp + 32]
		// src/f32/scalar/vec3a.rs:1261
		if math::abs(self.x) > math::abs(self.y) {
	ucomiss xmm6, xmm8
	movaps xmm0, xmmword ptr [rip + .LCPI158_5]
	movaps xmm5, xmm14
	xorps xmm5, xmm0
	ja .LBB158_4
	xorps xmm0, xmm0
	movaps xmm13, xmmword ptr [rsp + 80]
	movaps xmm7, xmmword ptr [rsp + 64]
	jmp .LBB158_6
.LBB158_2:
		// src/f32/scalar/vec3a.rs:986
		self * (1.0 - s) + rhs * s
	movaps xmm0, xmmword ptr [rip + .LCPI158_2]
	movss xmm0, xmm5
	movq xmm2, xmm5
	xorps xmm3, xmm3
	shufps xmm2, xmm3, 226
	subps xmm0, xmm2
	movaps xmm2, xmm0
	shufps xmm2, xmm0, 64
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movlhps xmm8, xmm1
	mulps xmm8, xmm2
	shufps xmm0, xmm0, 21
	shufps xmm11, xmm1, 20
	mulps xmm11, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm11, xmm8
		// src/f32/scalar/vec3a.rs:1334
		if dot < 0.0 {
	jmp .LBB158_9
.LBB158_4:
	movaps xmm7, xmmword ptr [rsp + 64]
		// src/f32/scalar/vec3a.rs:1261
		if math::abs(self.x) > math::abs(self.y) {
	xorps xmm0, xmm7
	movaps xmm13, xmmword ptr [rsp + 80]
.LBB158_6:
	movaps xmm3, xmmword ptr [rsp + 48]
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm4, xmm0
	mulss xmm4, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	movss xmm2, dword ptr [rsp + 12]
	movss xmm1, dword ptr [rsp + 8]
		// src/f32/float.rs:8
		self + (rhs - self) * t
	subss xmm3, xmm13
	movaps xmm11, xmmword ptr [rsp + 16]
	mulss xmm11, xmm3
	addss xmm11, xmm13
		// src/f32/scalar/quat.rs:820
		rhs.mul(w * w - b2)
	movaps xmm3, xmm1
	mulss xmm3, xmm1
		// src/f32/scalar/vec3a.rs:1261
		if math::abs(self.x) > math::abs(self.y) {
	cmpltss xmm8, xmm6
	movaps xmm6, xmm8
	movaps xmm12, xmmword ptr [rsp + 128]
	andps xmm6, xmm12
	andnps xmm8, xmm5
	orps xmm8, xmm6
	xorps xmm6, xmm6
	ja .LBB158_8
	movaps xmm6, xmm7
.LBB158_8:
		// src/f32/scalar/vec3a.rs:258
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm5, xmm6
	mulss xmm5, xmm6
	addss xmm4, xmm5
	movaps xmm5, xmm8
	mulss xmm5, xmm8
	addss xmm5, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm4, xmm4
	sqrtss xmm4, xmm5
	movss xmm5, dword ptr [rip + .LCPI158_6]
		// src/f32/scalar/vec3a.rs:597
		1.0 / self.length()
	divss xmm5, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm0, xmm5
	unpcklps xmm6, xmm8
	shufps xmm5, xmm5, 0
	mulps xmm5, xmm6
	mulss xmm0, xmm2
	shufps xmm2, xmm2, 0
	mulps xmm2, xmm5
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm4, xmm0
	mulss xmm4, xmm0
	movaps xmm5, xmm2
	mulps xmm5, xmm2
	addss xmm4, xmm5
	shufps xmm5, xmm5, 85
	addss xmm5, xmm4
		// src/f32/scalar/quat.rs:820
		rhs.mul(w * w - b2)
	subss xmm3, xmm5
	movaps xmm4, xmmword ptr [rip + .LCPI158_7]
	movss xmm4, xmm3
	shufps xmm4, xmm4, 64
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm3, xmm12
	mulss xmm3, xmm0
	movaps xmm6, xmm14
	mulps xmm6, xmm2
	addss xmm3, xmm6
	shufps xmm6, xmm6, 85
	addss xmm6, xmm3
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm3, xmm12
	shufps xmm3, xmm14, 212
	shufps xmm3, xmm14, 226
	mulps xmm3, xmm2
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	movaps xmm7, xmm14
	mulss xmm7, xmm0
		// src/f32/scalar/quat.rs:821
		.add(b.mul(rhs.dot(b) * 2.0))
	movss xmm8, dword ptr [rip + .LCPI158_8]
	movaps xmm5, xmm12
	movlhps xmm5, xmm8
	movaps xmm9, xmm8
	shufps xmm9, xmm5, 32
	movaps xmm5, xmm2
	movlhps xmm5, xmm6
	movaps xmm10, xmm6
	shufps xmm10, xmm5, 32
	mulps xmm10, xmm9
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	shufps xmm0, xmm2, 80
	movaps xmm5, xmm0
	shufps xmm5, xmm2, 194
	movlhps xmm6, xmm2
	movaps xmm2, xmm0
	shufps xmm2, xmm6, 34
	shufps xmm14, xmm12, 17
	movlhps xmm8, xmm12
	movaps xmm6, xmm14
	shufps xmm6, xmm8, 34
	mulps xmm6, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm2, xmm5
	shufps xmm2, xmm5, 201
	movsd xmm0, xmm7
	shufps xmm7, xmm7, 0
	mulps xmm2, xmm10
	subps xmm7, xmm10
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	shufps xmm5, xmm0, 137
	shufps xmm3, xmm5, 228
	subps xmm3, xmm6
	mulps xmm5, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movlhps xmm1, xmm12
	shufps xmm14, xmm1, 34
	mulps xmm14, xmm4
	movaps xmm0, xmm14
	shufps xmm0, xmm14, 210
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm0, xmm2
	mulps xmm7, xmm14
	shufps xmm7, xmm0, 35
	shufps xmm0, xmm7, 36
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm14, xmm14, 127
	mulps xmm3, xmm14
	addps xmm14, xmm5
	shufps xmm14, xmm3, 35
	shufps xmm3, xmm14, 36
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm3, xmm0
		// src/f32/scalar/vec3a.rs:1342
		rotation * self * (result_length / self_length)
	divss xmm11, xmm13
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm11, xmm11, 0
	mulps xmm11, xmm3
.LBB158_9:
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movaps xmmword ptr [rbx], xmm11
	#APP
	#NO_APP
		// benches/gungraun.rs:516
		}
	add rsp, 184
	.cfi_def_cfa_offset 24
	pop rbx
	.cfi_def_cfa_offset 16
	pop r14
	.cfi_def_cfa_offset 8
	ret
