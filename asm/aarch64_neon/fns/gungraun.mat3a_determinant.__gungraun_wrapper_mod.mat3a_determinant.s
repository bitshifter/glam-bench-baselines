.section .text.gungraun::mat3a_determinant::__gungraun_wrapper_mod::mat3a_determinant,"ax",@progbits
	.p2align	2
.type	gungraun::mat3a_determinant::__gungraun_wrapper_mod::mat3a_determinant,@function
gungraun::mat3a_determinant::__gungraun_wrapper_mod::mat3a_determinant:
		// benches/gungraun.rs:269
		#[bench::args(mat3a())]
	.cfi_startproc
	sub sp, sp, #16
	.cfi_def_cfa_offset 16
		// src/f32/neon/mat3a.rs:600
		self.x_axis.dot(self.y_axis.cross(self.z_axis))
	ldp q0, q1, [x0, #16]
	add x8, sp, #12
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/macros.rs:183
		($x:expr, $idx:expr, $val:expr $(,)?) => {{ $crate::intrinsics::simd::simd_insert($x, const { $idx }, $val) }};
	ext v2.16b, v0.16b, v0.16b, #12
	uzp1 v3.4s, v1.4s, v1.4s
	uzp1 v4.4s, v0.4s, v0.4s
	ext v5.16b, v1.16b, v1.16b, #12
	ext v2.16b, v2.16b, v0.16b, #8
	ext v0.16b, v4.16b, v0.16b, #12
	ext v3.16b, v3.16b, v1.16b, #12
	ext v1.16b, v5.16b, v1.16b, #8
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:32218
		unsafe { simd_mul(a, b) }
	fmul v2.4s, v2.4s, v3.4s
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:29996
		unsafe { simd_sub(a, simd_mul(b, c)) }
	fmul v0.4s, v0.4s, v1.4s
		// src/f32/neon/mat3a.rs:600
		self.x_axis.dot(self.y_axis.cross(self.z_axis))
	ldr q1, [x0]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs:29996
		unsafe { simd_sub(a, simd_mul(b, c)) }
	fsub v0.4s, v2.4s, v0.4s
		// src/f32/neon/vec3a.rs:256
		(self.x * rhs.x) + (self.y * rhs.y) + (self.z * rhs.z)
	fmul v0.4s, v1.4s, v0.4s
	faddp s1, v0.2s
	mov s0, v0.s[2]
	fadd s0, s0, s1
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str s0, [sp, #12]
	//APP
	//NO_APP
		// benches/gungraun.rs:272
		}
	ldr s0, [sp, #12]
	add sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
