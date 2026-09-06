.section .text.gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose,"ax",@progbits
	.p2align	4
.type	gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose,@function
gungraun::mat4_transpose::__gungraun_wrapper_mod::mat4_transpose:
	.cfi_startproc
		// src/f32/scalar/mat4.rs:619
		x_axis: Vec4::new(self.x_axis.x, self.y_axis.x, self.z_axis.x, self.w_axis.x),
	movss xmm3, dword ptr [rsi]
		// src/f32/scalar/mat4.rs:622
		w_axis: Vec4::new(self.x_axis.w, self.y_axis.w, self.z_axis.w, self.w_axis.w),
	movss xmm0, dword ptr [rsi + 28]
	movss xmm1, dword ptr [rsi + 44]
	movss xmm2, dword ptr [rsi + 60]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi], xmm3
		// src/f32/scalar/mat4.rs:620
		y_axis: Vec4::new(self.x_axis.y, self.y_axis.y, self.z_axis.y, self.w_axis.y),
	movups xmm3, xmmword ptr [rsi + 4]
	movups xmm4, xmmword ptr [rsi + 20]
	movups xmm5, xmmword ptr [rsi + 36]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm5, xmm3, 199
	shufps xmm4, xmm3, 51
	shufps xmm4, xmm5, 130
	movups xmmword ptr [rdi + 4], xmm4
		// src/f32/scalar/mat4.rs:621
		z_axis: Vec4::new(self.x_axis.z, self.y_axis.z, self.z_axis.z, self.w_axis.z),
	movups xmm3, xmmword ptr [rsi + 8]
	movups xmm4, xmmword ptr [rsi + 24]
	movups xmm5, xmmword ptr [rsi + 40]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm5, xmm3, 199
	shufps xmm4, xmm3, 51
	shufps xmm4, xmm5, 130
	movups xmmword ptr [rdi + 20], xmm4
		// src/f32/scalar/mat4.rs:622
		w_axis: Vec4::new(self.x_axis.w, self.y_axis.w, self.z_axis.w, self.w_axis.w),
	movups xmm3, xmmword ptr [rsi + 12]
	movups xmm4, xmmword ptr [rsi + 28]
	movups xmm5, xmmword ptr [rsi + 44]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	shufps xmm5, xmm3, 199
	shufps xmm4, xmm3, 51
	shufps xmm4, xmm5, 130
	movups xmmword ptr [rdi + 36], xmm4
	movss dword ptr [rdi + 52], xmm0
	movss dword ptr [rdi + 56], xmm1
	movss dword ptr [rdi + 60], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:347
		}
	ret
