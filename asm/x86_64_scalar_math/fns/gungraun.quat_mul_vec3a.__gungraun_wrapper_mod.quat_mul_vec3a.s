.section .text.gungraun::quat_mul_vec3a::__gungraun_wrapper_mod::quat_mul_vec3a,"ax",@progbits
	.p2align	4
.type	gungraun::quat_mul_vec3a::__gungraun_wrapper_mod::quat_mul_vec3a,@function
gungraun::quat_mul_vec3a::__gungraun_wrapper_mod::quat_mul_vec3a:
	.cfi_startproc
		// src/f32/scalar/quat.rs:817
		let w = self.w;
	movss xmm1, dword ptr [rsi + 12]
		// src/f32/scalar/quat.rs:820
		rhs.mul(w * w - b2)
	movaps xmm7, xmm1
	mulss xmm7, xmm1
		// src/f32/scalar/quat.rs:822
		.add(b.cross(rhs).mul(w * 2.0))
	addss xmm1, xmm1
		// benches/gungraun.rs:456
		black_box(q * v)
	movsd xmm2, qword ptr [rdx]
	movsd xmm0, qword ptr [rdx + 4]
		// src/f32/scalar/quat.rs:818
		let b = Vec3::new(self.x, self.y, self.z);
	movsd xmm3, qword ptr [rsi]
	movsd xmm4, qword ptr [rsi + 4]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm5, xmm4
	mulps xmm5, xmm4
	movaps xmm6, xmm3
	mulss xmm6, xmm3
	addss xmm6, xmm5
	shufps xmm5, xmm5, 85
	addss xmm5, xmm6
		// src/f32/scalar/quat.rs:820
		rhs.mul(w * w - b2)
	subss xmm7, xmm5
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm6, xmm0
	shufps xmm6, xmm0, 85
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm6, xmm7
	unpcklps xmm7, xmm7
	mulps xmm7, xmm2
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	movaps xmm5, xmm0
	mulps xmm5, xmm4
	movaps xmm8, xmm2
	mulss xmm8, xmm3
	addss xmm8, xmm5
	shufps xmm5, xmm5, 85
	addss xmm5, xmm8
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	movaps xmm8, xmm2
	shufps xmm8, xmm0, 16
	shufps xmm8, xmm0, 226
	mulps xmm8, xmm4
	movaps xmm9, xmm3
	shufps xmm9, xmm4, 16
	shufps xmm9, xmm4, 226
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm2, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	shufps xmm4, xmm4, 85
		// src/f32/scalar/quat.rs:821
		.add(b.mul(rhs.dot(b) * 2.0))
	addss xmm5, xmm5
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm4, xmm5
	unpcklps xmm5, xmm5
	mulps xmm5, xmm3
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm5, xmm7
	addss xmm4, xmm6
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mulps xmm9, xmm0
	subps xmm8, xmm9
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	mulss xmm0, xmm3
	subss xmm0, xmm2
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mulss xmm0, xmm1
	unpcklps xmm1, xmm1
	mulps xmm1, xmm8
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	addps xmm1, xmm5
	addss xmm0, xmm4
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movlps qword ptr [rdi], xmm1
	movss dword ptr [rdi + 8], xmm0
	movss dword ptr [rdi + 12], xmm0
	#APP
	#NO_APP
		// benches/gungraun.rs:457
		}
	ret
