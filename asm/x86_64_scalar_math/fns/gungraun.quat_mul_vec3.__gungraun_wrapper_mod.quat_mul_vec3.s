.section .text.gungraun::quat_mul_vec3::__gungraun_wrapper_mod::quat_mul_vec3,"ax",@progbits
	.p2align	4
.type	gungraun::quat_mul_vec3::__gungraun_wrapper_mod::quat_mul_vec3,@function
gungraun::quat_mul_vec3::__gungraun_wrapper_mod::quat_mul_vec3:
	.cfi_startproc
		// src/f32/scalar/quat.rs:817
		let w = self.w;
	movss xmm1, dword ptr [rsi + 12]
		// src/f32/scalar/quat.rs:820
		rhs.mul(w * w - b2)
	movaps xmm4, xmm1
	mulss xmm4, xmm1
		// src/f32/scalar/quat.rs:822
		.add(b.cross(rhs).mul(w * 2.0))
	addss xmm1, xmm1
		// src/f32/scalar/quat.rs:818
		let b = Vec3::new(self.x, self.y, self.z);
	movsd xmm0, qword ptr [rsi]
	movsd xmm3, qword ptr [rsi + 4]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	movaps xmm2, xmm3
	shufps xmm2, xmm3, 85
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm5, xmm3
	mulps xmm5, xmm3
	movaps xmm6, xmm0
	mulss xmm6, xmm0
	addss xmm6, xmm5
	shufps xmm5, xmm5, 85
	addss xmm5, xmm6
		// src/f32/scalar/quat.rs:820
		rhs.mul(w * w - b2)
	movsd xmm6, qword ptr [rdx]
	movsd xmm7, qword ptr [rdx + 4]
	subss xmm4, xmm5
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm5, xmm3
	mulps xmm5, xmm7
	movaps xmm8, xmm0
	mulss xmm8, xmm6
	addss xmm8, xmm5
	shufps xmm5, xmm5, 85
	addss xmm5, xmm8
		// src/f32/scalar/quat.rs:821
		.add(b.mul(rhs.dot(b) * 2.0))
	addss xmm5, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm2, xmm5
	unpcklps xmm5, xmm5
	mulps xmm5, xmm0
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm8, xmm6
	shufps xmm8, xmm7, 16
	shufps xmm8, xmm7, 226
	movaps xmm9, xmm0
	shufps xmm9, xmm3, 16
	shufps xmm9, xmm3, 226
	mulps xmm9, xmm7
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm0, xmm7
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	shufps xmm7, xmm7, 85
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm7, xmm4
	unpcklps xmm4, xmm4
	mulps xmm4, xmm6
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm5, xmm4
	addss xmm2, xmm7
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mulps xmm8, xmm3
	subps xmm8, xmm9
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm3, xmm6
	subss xmm0, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm0, xmm1
	unpcklps xmm1, xmm1
	mulps xmm1, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm1, xmm5
	addss xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm1
	movss dword ptr [rdi + 8], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:451
		}
	ret
