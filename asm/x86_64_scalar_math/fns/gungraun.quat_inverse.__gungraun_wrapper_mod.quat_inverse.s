.section .text.gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse,"ax",@progbits
	.p2align	4
.type	gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse,@function
gungraun::quat_inverse::__gungraun_wrapper_mod::quat_inverse:
	.cfi_startproc
		// benches/gungraun.rs:431
		black_box(q.inverse())
	movsd xmm0, qword ptr [rsi]
		// src/f32/scalar/quat.rs:541
		x: -self.x,
	xorps xmm0, xmmword ptr [rip + .LCPI170_0]
		// benches/gungraun.rs:431
		black_box(q.inverse())
	movss xmm1, dword ptr [rsi + 12]
	mov eax, -2147483648
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	xor eax, dword ptr [rsi + 8]
	movlps qword ptr [rdi], xmm0
	mov dword ptr [rdi + 8], eax
	movss dword ptr [rdi + 12], xmm1
	#APP
	#NO_APP
		// benches/gungraun.rs:432
		}
	ret
