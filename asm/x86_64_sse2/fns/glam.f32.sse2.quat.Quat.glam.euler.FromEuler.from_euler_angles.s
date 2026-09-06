.section .text.<glam::f32::sse2::quat::Quat as glam::euler::FromEuler>::from_euler_angles,"ax",@progbits
	.globl	<glam::f32::sse2::quat::Quat as glam::euler::FromEuler>::from_euler_angles
	.p2align	4
.type	<glam::f32::sse2::quat::Quat as glam::euler::FromEuler>::from_euler_angles,@function
<glam::f32::sse2::quat::Quat as glam::euler::FromEuler>::from_euler_angles:
		// src/euler.rs:295
		fn from_euler_angles(
	.cfi_startproc
	push rbp
	.cfi_def_cfa_offset 16
	push r15
	.cfi_def_cfa_offset 24
	push r14
	.cfi_def_cfa_offset 32
	push r13
	.cfi_def_cfa_offset 40
	push r12
	.cfi_def_cfa_offset 48
	push rbx
	.cfi_def_cfa_offset 56
	sub rsp, 72
	.cfi_def_cfa_offset 128
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov rbx, rdi
	mov rax, -2
		// src/euler.rs:154
		match euler {
	movzx ecx, sil
	lea rdx, [rip + .LJTI99_0]
	movsxd rcx, dword ptr [rdx + 4*rcx]
	add rcx, rdx
	jmp rcx
	mov ebp, 33619968
	jmp .LBB99_25
	mov ebp, 33554432
		// src/euler.rs:177
		EulerRot::XYZEx => Self::new(Axis::Z, Parity::Odd, Repeated::No, Frame::Relative),
	jmp .LBB99_25
	mov ebp, 33554433
		// src/euler.rs:175
		EulerRot::YXZEx => Self::new(Axis::Z, Parity::Even, Repeated::No, Frame::Relative),
	jmp .LBB99_29
	mov ebp, 65792
	jmp .LBB99_24
	mov ebp, 65537
	mov eax, 1
		// src/euler.rs:168
		EulerRot::XYXEx => Self::new(Axis::X, Parity::Even, Repeated::Yes, Frame::Relative),
	jmp .LBB99_29
	mov ebp, 1
	mov eax, 1
	jmp .LBB99_29
	mov ebp, 16843009
	mov eax, 1
	jmp .LBB99_29
	mov ebp, 16842752
	jmp .LBB99_24
	xor ebp, ebp
	jmp .LBB99_24
	mov ebp, 16842753
	mov eax, 1
	jmp .LBB99_29
	mov ebp, 33620225
		// src/euler.rs:164
		EulerRot::ZXZ => Self::new(Axis::Z, Parity::Even, Repeated::Yes, Frame::Static),
	jmp .LBB99_29
	mov ebp, 33619969
	jmp .LBB99_29
	mov ebp, 16777217
	mov eax, 1
		// src/euler.rs:168
		EulerRot::XYXEx => Self::new(Axis::X, Parity::Even, Repeated::Yes, Frame::Relative),
	jmp .LBB99_29
	mov ebp, 16777472
	jmp .LBB99_24
	mov ebp, 65536
	jmp .LBB99_24
	mov ebp, 16777473
	mov eax, 1
	jmp .LBB99_29
	mov ebp, 16777216
	jmp .LBB99_24
	mov ebp, 33620224
		// src/euler.rs:166
		EulerRot::ZYZ => Self::new(Axis::Z, Parity::Odd, Repeated::Yes, Frame::Static),
	jmp .LBB99_25
	mov ebp, 33554688
		// src/euler.rs:178
		EulerRot::ZYZEx => Self::new(Axis::Z, Parity::Odd, Repeated::Yes, Frame::Relative),
	jmp .LBB99_25
	mov ebp, 65793
	mov eax, 1
		// src/euler.rs:168
		EulerRot::XYXEx => Self::new(Axis::X, Parity::Even, Repeated::Yes, Frame::Relative),
	jmp .LBB99_29
	mov ebp, 16843008
	jmp .LBB99_24
	mov ebp, 257
	mov eax, 1
	jmp .LBB99_29
	mov ebp, 33554689
.LBB99_29:
		// src/euler.rs:303
		let order = Order::from_euler(euler);
	mov r14d, ebp
	shr r14d, 24
	lea rcx, [r14 - 1]
		// src/euler.rs:187
		if i > 0 {
	test r14d, r14d
	mov r15d, 2
	cmovne r15, rcx
		// src/euler.rs:304
		let (i, j, k) = order.angle_order();
	test ebp, 65536
		// src/euler.rs:306
		let mut angles = if order.frame_static {
	jne .LBB99_31
	movaps xmm3, xmm2
	movaps xmm2, xmm0
	movaps xmm0, xmm3
.LBB99_31:
	add rax, r14
		// src/euler.rs:312
		if order.parity_even {
	xorps xmm1, xmmword ptr [rip + .LCPI99_0]
	movss xmm3, dword ptr [rip + .LCPI99_1]
	movss dword ptr [rsp], xmm3
	mov r12, rax
	jmp .LBB99_32
	mov ebp, 256
.LBB99_24:
	mov eax, 1
.LBB99_25:
		// src/euler.rs:303
		let order = Order::from_euler(euler);
	mov r14d, ebp
	shr r14d, 24
		// src/euler.rs:187
		if i > 0 {
	lea rcx, [r14 - 1]
	test r14d, r14d
	mov r12d, 2
	cmovne r12, rcx
		// src/euler.rs:304
		let (i, j, k) = order.angle_order();
	test ebp, 65536
		// src/euler.rs:306
		let mut angles = if order.frame_static {
	jne .LBB99_27
	movaps xmm3, xmm2
	movaps xmm2, xmm0
	movaps xmm0, xmm3
.LBB99_27:
	add rax, r14
	movss xmm3, dword ptr [rip + .LCPI99_2]
	movss dword ptr [rsp], xmm3
	mov r15, rax
.LBB99_32:
	mov dword ptr [rsp + 40], 0
	mov qword ptr [rsp + 32], 0
	movss xmm3, dword ptr [rip + .LCPI99_3]
		// src/euler.rs:316
		let ti = angles.x * 0.5;
	mulss xmm0, xmm3
		// src/euler.rs:317
		let tj = angles.y * 0.5;
	mulss xmm1, xmm3
	movaps xmmword ptr [rsp + 48], xmm1
		// src/euler.rs:318
		let th = angles.z * 0.5;
	mulss xmm2, xmm3
	movss dword ptr [rsp + 4], xmm2
	lea rdi, [rsp + 28]
	lea rsi, [rsp + 24]
	mov r13, qword ptr [rip + sincosf@GOTPCREL]
		// ~/.rustup/toolchains/1.98.0-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sinf32(self)
	call r13
	lea rdi, [rsp + 20]
	lea rsi, [rsp + 16]
	movaps xmm0, xmmword ptr [rsp + 48]
	call r13
	lea rdi, [rsp + 12]
	lea rsi, [rsp + 8]
	movss xmm0, dword ptr [rsp + 4]
	call r13
	movss xmm1, dword ptr [rsp + 20]
	movss xmm0, dword ptr [rsp + 16]
		// src/euler.rs:325
		let ss = si * sh;
	movss xmm3, dword ptr [rsp + 8]
	movss xmm2, dword ptr [rsp + 12]
	unpcklps xmm2, xmm3
	movss xmm3, dword ptr [rsp + 28]
	shufps xmm2, xmm3, 4
	movaps xmm3, xmm2
	shufps xmm3, xmm2, 196
	movss xmm4, dword ptr [rsp + 24]
	shufps xmm2, xmm4, 7
	shufps xmm2, xmm2, 120
	mulps xmm2, xmm3
	movaps xmm3, xmm2
	shufps xmm3, xmm2, 177
		// src/euler.rs:304
		let (i, j, k) = order.angle_order();
	test ebp, 256
		// src/euler.rs:331
		if order.initial_repeated {
	jne .LBB99_35
		// src/euler.rs:338
		a[j] = (cj * ss + sj * cc) * parity;
	shufps xmm1, xmm1, 0
	mulps xmm1, xmm3
	shufps xmm0, xmm0, 0
	mulps xmm0, xmm2
	movaps xmm2, xmm0
	addps xmm2, xmm1
	subps xmm0, xmm1
	movsd xmm0, xmm2
	jmp .LBB99_34
.LBB99_35:
		// src/euler.rs:333
		a[j] = sj * (cc + ss) * parity;
	movaps xmm4, xmm2
	addps xmm4, xmm3
	subps xmm2, xmm3
	shufps xmm4, xmm2, 156
	shufps xmm4, xmm4, 120
		// src/euler.rs:335
		a[3] = cj * (cc - ss);
	unpcklps xmm1, xmm0
	movlhps xmm1, xmm1
		// src/euler.rs:333
		a[j] = sj * (cc + ss) * parity;
	mulps xmm1, xmm4
	movaps xmm0, xmm1
.LBB99_34:
	movss xmm2, dword ptr [rsp]
	mulss xmm2, xmm0
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 255
	movss dword ptr [rsp + 4*r14 + 32], xmm1
	movss dword ptr [rsp + 4*r12 + 32], xmm2
	movaps xmm1, xmm0
	unpckhpd xmm1, xmm0
	movss dword ptr [rsp + 4*r15 + 32], xmm1
	shufps xmm0, xmm0, 85
	movss dword ptr [rsp + 44], xmm0
		// src/f32/sse2/quat.rs:97
		Self::from_xyzw(a[0], a[1], a[2], a[3])
	movaps xmm0, xmmword ptr [rsp + 32]
		// src/f32/sse2/quat.rs:85
		unsafe { UnionCast { a: [x, y, z, w] }.v }
	movaps xmmword ptr [rbx], xmm0
		// src/euler.rs:344
		}
	mov rax, rbx
	add rsp, 72
	.cfi_def_cfa_offset 56
	pop rbx
	.cfi_def_cfa_offset 48
	pop r12
	.cfi_def_cfa_offset 40
	pop r13
	.cfi_def_cfa_offset 32
	pop r14
	.cfi_def_cfa_offset 24
	pop r15
	.cfi_def_cfa_offset 16
	pop rbp
	.cfi_def_cfa_offset 8
	ret
