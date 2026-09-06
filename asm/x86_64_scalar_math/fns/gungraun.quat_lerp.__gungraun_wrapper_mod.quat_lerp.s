.section .text.gungraun::quat_lerp::__gungraun_wrapper_mod::quat_lerp,"ax",@progbits
	.p2align	4
.type	gungraun::quat_lerp::__gungraun_wrapper_mod::quat_lerp,@function
gungraun::quat_lerp::__gungraun_wrapper_mod::quat_lerp:
		// benches/gungraun.rs:441
		#[bench::positive_dot(quat(), quat_rot_x_180(), bb_f32())]
	.cfi_startproc
	movss xmm1, dword ptr [rip + .LCPI292_0]
		// src/f32/scalar/quat.rs:705
		(self * (1.0 - s) + end * s).normalize()
	movaps xmm2, xmm1
	subss xmm2, xmm0
		// src/f32/scalar/quat.rs:724
		let dot = self.dot(end);
	movups xmm4, xmmword ptr [rsi]
	movups xmm3, xmmword ptr [rdx]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm2, xmm2, 0
	mulps xmm2, xmm4
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	mulps xmm4, xmm3
	movaps xmm5, xmm4
	movaps xmm6, xmm4
	shufps xmm6, xmm4, 85
	addss xmm6, xmm4
	shufps xmm4, xmm4, 255
	movhlps xmm5, xmm5
	addss xmm6, xmm5
	addss xmm6, xmm4
	xorps xmm4, xmm4
	xor eax, eax
	ucomiss xmm6, xmm4
	setb al
	lea rcx, [rip + .LCPI292_1]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movss xmm4, dword ptr [rcx + 4*rax]
	shufps xmm4, xmm4, 0
	mulps xmm4, xmm3
	shufps xmm0, xmm0, 0
	mulps xmm0, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm0, xmm2
		// src/f32/scalar/vec4.rs:243
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z) + (self.w * rhs.w)
	movaps xmm2, xmm0
	mulps xmm2, xmm0
	movaps xmm3, xmm2
	movaps xmm4, xmm2
	shufps xmm4, xmm2, 85
	addss xmm4, xmm2
	shufps xmm2, xmm2, 255
	movhlps xmm3, xmm3
	addss xmm4, xmm3
	addss xmm4, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:2103
		intrinsics::sqrtf32(x)
	xorps xmm2, xmm2
	sqrtss xmm2, xmm4
		// src/f32/scalar/vec4.rs:630
		1.0 / self.length()
	divss xmm1, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm1, xmm1, 0
	mulps xmm1, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:445
		}
	ret
