.section .text.gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse,@function
gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse:
	.cfi_startproc
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur q1, [x1, #20]
		// src/f32/mat3.rs:533
		let tmp1 = self.z_axis.cross(self.x_axis);
	ldr q2, [x1]
	fmov s0, #1.00000000
	ldur q16, [x1, #4]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v3.16b, v2.16b, v1.16b, #4
	ext v5.16b, v1.16b, v1.16b, #8
	mov v6.16b, v2.16b
	mov v6.d[0], v2.d[1]
	ext v4.16b, v3.16b, v2.16b, #12
	uzp2 v7.4s, v2.4s, v5.4s
	ext v6.16b, v1.16b, v6.16b, #12
	zip1 v3.4s, v3.4s, v4.4s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	ext v4.16b, v1.16b, v2.16b, #4
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v7.s[1], v16.s[3]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	dup v2.4s, v2.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v3.4s, v1.4s, v3.4s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	uzp2 v4.4s, v1.4s, v4.4s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v6.4s, v7.4s, v6.4s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	zip2 v2.4s, v16.4s, v2.4s
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldr s7, [x1, #16]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul s7, s7, v1.s[3]
	ext v17.16b, v3.16b, v3.16b, #4
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	mov v4.s[1], v16.s[2]
	ext v2.16b, v2.16b, v2.16b, #4
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	uzp2 v3.4s, v17.4s, v3.4s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fmul v4.4s, v4.4s, v16.4s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul s17, s1, v1.s[2]
	fsub v3.4s, v3.4s, v6.4s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	ext v6.16b, v4.16b, v4.16b, #12
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v18.4s, v1.4s, v3.4s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	mov v1.s[3], v16.s[0]
	zip1 v6.4s, v4.4s, v6.4s
	zip2 v4.4s, v6.4s, v4.4s
	fmul v1.4s, v2.4s, v1.4s
	fsub v1.4s, v4.4s, v1.4s
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	ext v2.16b, v1.16b, v1.16b, #8
	mov v4.16b, v1.16b
	mov v4.s[1], v2.s[1]
	mov s2, v18.s[1]
	fmul v4.2s, v5.2s, v4.2s
	fadd s2, s2, s4
	mov s4, v4.s[1]
	fadd s2, s4, s2
		// src/f32/mat3.rs:543
		let inv_det = Vec3::splat(1.0 / det);
	fdiv s0, s0, s2
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub s2, s7, s17
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s2, s2, s0
	fmul v3.4s, v3.4s, v0.s[0]
	fmul v0.4s, v1.4s, v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s2, [x0]
	stur q3, [x0, #4]
	stur q0, [x0, #20]
	//APP
	//NO_APP
		// benches/gungraun.rs:228
		}
	ret
