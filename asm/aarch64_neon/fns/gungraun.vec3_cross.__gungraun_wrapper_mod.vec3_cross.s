.section .text.gungraun::vec3_cross::__gungraun_wrapper_mod::vec3_cross,"ax",@progbits
	.p2align	2
.type	gungraun::vec3_cross::__gungraun_wrapper_mod::vec3_cross,@function
gungraun::vec3_cross::__gungraun_wrapper_mod::vec3_cross:
	.cfi_startproc
		// benches/gungraun.rs:557
		black_box(v1.cross(v2))
	ldur d0, [x1, #4]
	ldur d1, [x2, #4]
	ldr s4, [x1]
	ldr s5, [x2]
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	dup v2.2s, v1.s[1]
	dup v3.2s, v0.s[1]
	mov v2.s[1], v5.s[0]
	mov v3.s[1], v4.s[0]
	fmul v2.2s, v0.2s, v2.2s
	fmul v3.2s, v3.2s, v1.2s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fmul s1, s4, s1
	fmul s0, s5, s0
		// src/f32/vec3.rs:262
		self.y * rhs.z - rhs.y * self.z,
	fsub v2.2s, v2.2s, v3.2s
		// src/f32/vec3.rs:264
		self.x * rhs.y - rhs.x * self.y,
	fsub s0, s1, s0
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str d2, [x0]
	str s0, [x0, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:558
		}
	ret
