.section .text.gungraun::vec3a_select::__gungraun_wrapper_mod::vec3a_select,"ax",@progbits
	.p2align	2
.type	gungraun::vec3a_select::__gungraun_wrapper_mod::vec3a_select,@function
gungraun::vec3a_select::__gungraun_wrapper_mod::vec3a_select:
	.cfi_startproc
		// src/f32/scalar/vec3a.rs:136
		if mask.test(0) { if_true.x } else { if_false.x },
	ldp w8, w9, [x1]
	ldr w10, [x1, #8]
	tst w8, #0x1
	csel x8, x2, x3, ne
		// src/f32/scalar/vec3a.rs:137
		if mask.test(1) { if_true.y } else { if_false.y },
	tst w9, #0x1
		// src/f32/scalar/vec3a.rs:136
		if mask.test(0) { if_true.x } else { if_false.x },
	ldr s0, [x8]
		// src/f32/scalar/vec3a.rs:137
		if mask.test(1) { if_true.y } else { if_false.y },
	csel x8, x2, x3, ne
		// src/f32/scalar/vec3a.rs:138
		if mask.test(2) { if_true.z } else { if_false.z },
	tst w10, #0x1
		// src/f32/scalar/vec3a.rs:137
		if mask.test(1) { if_true.y } else { if_false.y },
	ldr s1, [x8, #4]
		// src/f32/scalar/vec3a.rs:138
		if mask.test(2) { if_true.z } else { if_false.z },
	csel x8, x2, x3, ne
	ldr s2, [x8, #8]
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	stp s0, s1, [x0]
	stp s2, s2, [x0, #8]
	//APP
	//NO_APP
		// benches/gungraun.rs:495
		}
	ret
