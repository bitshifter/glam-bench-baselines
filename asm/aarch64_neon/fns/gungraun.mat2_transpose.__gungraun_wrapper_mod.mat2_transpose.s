.section .text.gungraun::mat2_transpose::__gungraun_wrapper_mod::mat2_transpose,"ax",@progbits
	.p2align	2
.type	gungraun::mat2_transpose::__gungraun_wrapper_mod::mat2_transpose,@function
gungraun::mat2_transpose::__gungraun_wrapper_mod::mat2_transpose:
	.cfi_startproc
		// ~/.rustup/toolchains/1.98.0-aarch64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs:491
		crate::intrinsics::black_box(dummy)
	ext v1.16b, v0.16b, v0.16b, #8
	st2 { v0.2s, v1.2s }, [x0]
	//APP
	//NO_APP
		// benches/gungraun.rs:191
		}
	ret
