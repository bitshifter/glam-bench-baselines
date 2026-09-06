.section .text.gungraun::vec4_select::__gungraun_wrapper_mod::vec4_select,"ax",@progbits
	.p2align	4
.type	gungraun::vec4_select::__gungraun_wrapper_mod::vec4_select,@function
gungraun::vec4_select::__gungraun_wrapper_mod::vec4_select:
		// benches/gungraun.rs:543
		#[bench::args(bvec4a(), vec4(), vec4())]
	.cfi_startproc
	movd xmm0, esi
		// benches/gungraun.rs:545
		black_box(Vec4::select(b, v1, v2))
	xor eax, eax
	test esi, 256
	sete al
	movd xmm1, esi
	pshufd xmm1, xmm1, 0
	pand xmm1, xmmword ptr [rip + .LCPI162_0]
	pxor xmm2, xmm2
	pcmpeqd xmm2, xmm1
	movups xmm1, xmmword ptr [rdx]
	movups xmm3, xmmword ptr [rcx]
	movd xmm4, eax
	punpcklqdq xmm4, xmm0
	shufps xmm4, xmm2, 66
	pslld xmm4, 31
	psrad xmm4, 31
	movaps xmm0, xmm3
	movss xmm0, xmm1
	movss xmm1, xmm3
	andps xmm0, xmm4
	andnps xmm4, xmm1
	orps xmm4, xmm0
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	movups xmmword ptr [rdi], xmm4
	#APP
	#NO_APP
		// benches/gungraun.rs:546
		}
	ret
