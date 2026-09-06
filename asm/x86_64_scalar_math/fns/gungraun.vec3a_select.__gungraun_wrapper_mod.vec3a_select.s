.section .text.gungraun::vec3a_select::__gungraun_wrapper_mod::vec3a_select,"ax",@progbits
	.p2align	4
.type	gungraun::vec3a_select::__gungraun_wrapper_mod::vec3a_select,@function
gungraun::vec3a_select::__gungraun_wrapper_mod::vec3a_select:
	.cfi_startproc
		// src/f32/scalar/vec3a.rs:136
		if mask.test(0) { if_true.x } else { if_false.x },
	mov eax, dword ptr [rsi]
	test al, 1
	mov rax, rcx
	cmovne rax, rdx
		// src/f32/scalar/vec3a.rs:137
		if mask.test(1) { if_true.y } else { if_false.y },
	test byte ptr [rsi + 4], 1
	mov r8, rcx
	cmovne r8, rdx
		// src/f32/scalar/vec3a.rs:136
		if mask.test(0) { if_true.x } else { if_false.x },
	movss xmm0, dword ptr [rax]
		// src/f32/scalar/vec3a.rs:137
		if mask.test(1) { if_true.y } else { if_false.y },
	movss xmm1, dword ptr [r8 + 4]
		// src/f32/scalar/vec3a.rs:138
		if mask.test(2) { if_true.z } else { if_false.z },
	test byte ptr [rsi + 8], 1
	cmovne rcx, rdx
	movss xmm2, dword ptr [rcx + 8]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movss dword ptr [rdi], xmm0
	movss dword ptr [rdi + 4], xmm1
	movss dword ptr [rdi + 8], xmm2
	movss dword ptr [rdi + 12], xmm2
	#APP
	#NO_APP
		// benches/gungraun.rs:495
		}
	ret
