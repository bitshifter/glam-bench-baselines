.section .text.gungraun::vec4_select::__gungraun_wrapper_mod::vec4_select,"ax",@progbits
	.p2align	2
.type	gungraun::vec4_select::__gungraun_wrapper_mod::vec4_select,@function
gungraun::vec4_select::__gungraun_wrapper_mod::vec4_select:
	.cfi_startproc
		// benches/gungraun.rs:545
		black_box(Vec4::select(b, v1, v2))
	dup v0.2s, w1
	adrp x8, .LCPI162_0
	tst w1, #0x100
	ldr d1, [x8, :lo12:.LCPI162_0]
	cset w8, eq
	ldr q2, [x3]
	ldr q3, [x2]
	mov v4.16b, v2.16b
	and v0.8b, v0.8b, v1.8b
	fmov s1, w1
	mov v4.s[0], v3.s[0]
	mov v3.s[0], v2.s[0]
	mov v1.h[1], w8
	cmeq v0.2s, v0.2s, #0
	mov w8, v0.s[1]
	mov v1.h[2], v0.h[0]
	mov v1.h[3], w8
	ushll v1.4s, v1.4h, #0
	shl v1.4s, v1.4s, #31
	cmlt v1.4s, v1.4s, #0
	bsl v1.16b, v4.16b, v3.16b
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	str q1, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:546
		}
	ret
