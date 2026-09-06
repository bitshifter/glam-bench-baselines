.section .text.gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross,@function
gungraun::vec3a_cross::__gungraun_wrapper_mod::vec3a_cross:
	.cfi_startproc
		// benches/gungraun.rs:476
		black_box(v1.cross(v2))
	ldp d1, d0, [x2]
	ldur d2, [x1, #4]
	ldr d3, [x1]
		// src/f32/scalar/vec3a.rs:273
		self.y * rhs.z - rhs.y * self.z,
	mov v4.16b, v2.16b
	zip1 v0.2s, v0.2s, v1.2s
	dup v5.2s, v1.s[1]
	mov v2.d[1], v3.d[0]
	mov v1.d[1], v0.d[0]
	mov v0.d[1], v5.d[0]
	fmul v1.4s, v2.4s, v1.4s
	dup v2.2s, v3.s[0]
	ext v3.16b, v1.16b, v1.16b, #12
	mov v4.d[1], v2.d[0]
	zip1 v2.4s, v1.4s, v3.4s
	fmul v0.4s, v4.4s, v0.4s
	zip2 v1.4s, v2.4s, v1.4s
	fsub v0.4s, v0.4s, v1.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q0, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:477
		}
	ret
