.section .text.gungraun::quat_mul_vec3a::__gungraun_wrapper_mod::quat_mul_vec3a,"ax",@progbits
	.p2align	2
.type	gungraun::quat_mul_vec3a::__gungraun_wrapper_mod::quat_mul_vec3a,@function
gungraun::quat_mul_vec3a::__gungraun_wrapper_mod::quat_mul_vec3a:
	.cfi_startproc
		// src/f32/scalar/quat.rs:818
		let b = Vec3::new(self.x, self.y, self.z);
	ldr d0, [x1]
	ldur d1, [x1, #4]
		// benches/gungraun.rs:456
		black_box(q * v)
	ldr d2, [x2]
	ldur d3, [x2, #4]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v4.2s, v0.2s, v0.2s
	fmul v5.2s, v1.2s, v1.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	mov s6, v1.s[1]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	mov s7, v3.s[1]
	fmul v16.2s, v2.2s, v0.2s
	fmul v17.2s, v3.2s, v1.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v18.8b, v1.8b, v0.8b, #4
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd v4.2s, v4.2s, v5.2s
	fmul s5, s6, v1.s[1]
	fadd v6.2s, v16.2s, v17.2s
	fmul s7, s7, v1.s[1]
		// src/f32/scalar/quat.rs:817
		let w = self.w;
	ldr s16, [x1, #12]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v17.8b, v3.8b, v2.8b, #4
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s4, s4, s5
		// src/f32/scalar/quat.rs:820
		rhs.mul(w * w - b2)
	fmul s5, s16, s16
		// src/f32/scalar/quat.rs:822
		.add(b.cross(rhs).mul(w * 2.0))
	fadd s16, s16, s16
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fadd s6, s6, s7
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v7.2s, v17.2s, v1.2s
	fmul v17.2s, v3.2s, v18.2s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul v18.2s, v2.2s, v1.2s
		// src/f32/scalar/quat.rs:820
		rhs.mul(w * w - b2)
	fsub s4, s5, s4
		// src/f32/scalar/quat.rs:821
		.add(b.mul(rhs.dot(b) * 2.0))
	fadd s5, s6, s6
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul v6.2s, v3.2s, v0.2s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub v7.2s, v7.2s, v17.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul v2.2s, v2.2s, v4.s[0]
	fmul s3, s4, v3.s[1]
	fmul v0.2s, v0.2s, v5.s[0]
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fsub v6.2s, v6.2s, v18.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s1, s5, v1.s[1]
	fmul v4.2s, v7.2s, v16.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd v0.2s, v2.2s, v0.2s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s2, s16, s6
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	fadd s1, s3, s1
	fadd v0.2s, v4.2s, v0.2s
	fadd s1, s2, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d0, [x0]
	stp s1, s1, [x0, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:457
		}
	ret
