.section .text.gungraun::mat3_transpose::__gungraun_wrapper_mod::mat3_transpose,"ax",@progbits
	.p2align	4
.type	gungraun::mat3_transpose::__gungraun_wrapper_mod::mat3_transpose,@function
gungraun::mat3_transpose::__gungraun_wrapper_mod::mat3_transpose:
	.cfi_startproc
		// src/f32/mat3.rs:498
		x_axis: Vec3::new(self.x_axis.x, self.y_axis.x, self.z_axis.x),
	movss xmm0, dword ptr [rsi]
		// src/f32/mat3.rs:499
		y_axis: Vec3::new(self.x_axis.y, self.y_axis.y, self.z_axis.y),
	movss xmm1, dword ptr [rsi + 28]
		// src/f32/mat3.rs:500
		z_axis: Vec3::new(self.x_axis.z, self.y_axis.z, self.z_axis.z),
	movss xmm2, dword ptr [rsi + 32]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi], xmm0
		// src/f32/mat3.rs:499
		y_axis: Vec3::new(self.x_axis.y, self.y_axis.y, self.z_axis.y),
	movups xmm0, xmmword ptr [rsi + 4]
	movsd xmm3, qword ptr [rsi + 20]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm3, xmm0, 33
	shufps xmm3, xmm0, 194
	movups xmmword ptr [rdi + 4], xmm3
	movss dword ptr [rdi + 20], xmm1
		// src/f32/mat3.rs:500
		z_axis: Vec3::new(self.x_axis.z, self.y_axis.z, self.z_axis.z),
	movups xmm0, xmmword ptr [rsi + 8]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm0, xmm0, 236
	movlps qword ptr [rdi + 24], xmm0
	movss dword ptr [rdi + 32], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:241
		}
	ret
