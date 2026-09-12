.section .text.gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse,"ax",@progbits
	.p2align	2
.type	gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse,@function
gungraun::mat3_inverse::__gungraun_wrapper_mod::mat3_inverse:
	.cfi_startproc
		// src/f32/mat3.rs:532
		let tmp0 = self.y_axis.cross(self.z_axis);
	ldur q2, [x1, #20]
		// src/f32/mat3.rs:533
		let det = self.x_axis.dot(tmp0);
	ldr q1, [x1]
	fmov s0, #1.00000000
	ldur q6, [x1, #4]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v3.16b, v1.16b, v2.16b, #4
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	ext v4.16b, v2.16b, v1.16b, #4
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v7.16b, v2.16b, v2.16b, #8
	ext v16.16b, v6.16b, v6.16b, #8
	mov v17.16b, v1.16b
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	dup v18.4s, v1.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v5.16b, v3.16b, v1.16b, #12
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	uzp2 v4.4s, v2.4s, v4.4s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	mov v17.d[0], v1.d[1]
	ext v16.8b, v16.8b, v7.8b, #4
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	zip2 v18.4s, v6.4s, v18.4s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	zip1 v3.4s, v3.4s, v5.4s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	mov v4.s[1], v6.s[2]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v5.8b, v7.8b, v2.8b, #4
	uzp2 v7.4s, v1.4s, v7.4s
	ext v17.16b, v2.16b, v17.16b, #12
	fmul v3.4s, v2.4s, v3.4s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fmul v4.4s, v4.4s, v6.4s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v5.2s, v5.2s, v16.2s
	mov v7.s[1], v6.s[3]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	mov v2.s[3], v6.s[0]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	ext v16.16b, v3.16b, v3.16b, #4
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	ext v19.16b, v4.16b, v4.16b, #12
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fmul v7.4s, v7.4s, v17.4s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	ext v17.16b, v18.16b, v18.16b, #4
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	uzp2 v3.4s, v16.4s, v3.4s
	dup v16.2s, v5.s[1]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	zip1 v18.4s, v4.4s, v19.4s
	fmul v2.4s, v17.4s, v2.4s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub v5.2s, v5.2s, v16.2s
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	zip2 v4.4s, v18.4s, v4.4s
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub v3.4s, v3.4s, v7.4s
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s1, s1, v5.s[0]
		// src/f32/vec3.rs:263
		self.z * rhs.x - rhs.z * self.x,
	fsub v2.4s, v4.4s, v2.4s
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s4, s6, v3.s[2]
		// src/f32/mat3.rs:533
		let det = self.x_axis.dot(tmp0);
	ldr s6, [x1, #8]
		// src/f32/vec3.rs:247
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul s6, s6, v2.s[1]
	fadd s1, s1, s4
	fadd s1, s1, s6
		// src/f32/mat3.rs:543
		let inv_det = Vec3::splat(1.0 / det);
	fdiv s0, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/arith.rs:350
		fn mul(self, other: $t) -> $t { self * other }
	fmul s1, s0, s5
	fmul v3.4s, v3.4s, v0.s[0]
	fmul v0.4s, v2.4s, v0.s[0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s1, [x0]
	stur q3, [x0, #4]
	stur q0, [x0, #20]
	//APP
	//NO_APP
		// benches/gungraun.rs:228
		}
	ret
