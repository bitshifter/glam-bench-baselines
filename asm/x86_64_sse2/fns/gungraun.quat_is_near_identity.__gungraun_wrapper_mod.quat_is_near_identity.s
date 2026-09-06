.section .text.gungraun::quat_is_near_identity::__gungraun_wrapper_mod::quat_is_near_identity,"ax",@progbits
	.p2align	4
.type	gungraun::quat_is_near_identity::__gungraun_wrapper_mod::quat_is_near_identity,@function
gungraun::quat_is_near_identity::__gungraun_wrapper_mod::quat_is_near_identity:
	.cfi_startproc
		// src/f32/sse2/quat.rs:647
		math::abs(self.w) > THRESHOLD
	shufps xmm0, xmm0, 255
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/f32.rs:1632
		intrinsics::fabs(self)
	andps xmm0, xmmword ptr [rip + .LCPI256_0]
		// src/f32/sse2/quat.rs:647
		math::abs(self.w) > THRESHOLD
	ucomiss xmm0, dword ptr [rip + .LCPI256_1]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	seta byte ptr [rsp - 1]
	lea rax, [rsp - 1]
	#APP
	#NO_APP
		// benches/gungraun.rs:438
		}
	movzx eax, byte ptr [rsp - 1]
	ret
