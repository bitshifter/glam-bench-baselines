.section .text.<glam::f32::coresimd::quat::Quat as glam::euler::FromEuler>::from_euler_angles,"ax",@progbits
	.globl	<glam::f32::coresimd::quat::Quat as glam::euler::FromEuler>::from_euler_angles
	.prefalign	4, .Lfunc_end97, nop
.type	<glam::f32::coresimd::quat::Quat as glam::euler::FromEuler>::from_euler_angles,@function
<glam::f32::coresimd::quat::Quat as glam::euler::FromEuler>::from_euler_angles:
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
	lea rdx, [rip + .LJTI97_0]
	movsxd rcx, dword ptr [rdx + 4*rcx]
	add rcx, rdx
	jmp rcx
	mov ebp, 33619968
	jmp .LBB97_25
	mov ebp, 33554432
		// src/euler.rs:177
		EulerRot::XYZEx => Self::new(Axis::Z, Parity::Odd, Repeated::No, Frame::Relative),
	jmp .LBB97_25
	mov ebp, 33554433
		// src/euler.rs:175
		EulerRot::YXZEx => Self::new(Axis::Z, Parity::Even, Repeated::No, Frame::Relative),
	jmp .LBB97_30
	mov ebp, 65792
	jmp .LBB97_24
	mov ebp, 65537
	mov eax, 1
		// src/euler.rs:168
		EulerRot::XYXEx => Self::new(Axis::X, Parity::Even, Repeated::Yes, Frame::Relative),
	jmp .LBB97_30
	mov ebp, 1
	mov eax, 1
	jmp .LBB97_30
	mov ebp, 16843009
	mov eax, 1
	jmp .LBB97_30
	mov ebp, 16842752
	jmp .LBB97_24
	xor ebp, ebp
	jmp .LBB97_24
	mov ebp, 16842753
	mov eax, 1
	jmp .LBB97_30
	mov ebp, 33620225
		// src/euler.rs:164
		EulerRot::ZXZ => Self::new(Axis::Z, Parity::Even, Repeated::Yes, Frame::Static),
	jmp .LBB97_30
	mov ebp, 33619969
	jmp .LBB97_30
	mov ebp, 16777217
	mov eax, 1
		// src/euler.rs:168
		EulerRot::XYXEx => Self::new(Axis::X, Parity::Even, Repeated::Yes, Frame::Relative),
	jmp .LBB97_30
	mov ebp, 16777472
	jmp .LBB97_24
	mov ebp, 65536
	jmp .LBB97_24
	mov ebp, 16777473
	mov eax, 1
	jmp .LBB97_30
	mov ebp, 16777216
	jmp .LBB97_24
	mov ebp, 33620224
		// src/euler.rs:166
		EulerRot::ZYZ => Self::new(Axis::Z, Parity::Odd, Repeated::Yes, Frame::Static),
	jmp .LBB97_25
	mov ebp, 33554688
		// src/euler.rs:178
		EulerRot::ZYZEx => Self::new(Axis::Z, Parity::Odd, Repeated::Yes, Frame::Relative),
	jmp .LBB97_25
	mov ebp, 65793
	mov eax, 1
		// src/euler.rs:168
		EulerRot::XYXEx => Self::new(Axis::X, Parity::Even, Repeated::Yes, Frame::Relative),
	jmp .LBB97_30
	mov ebp, 16843008
	jmp .LBB97_24
	mov ebp, 257
	mov eax, 1
	jmp .LBB97_30
	mov ebp, 33554689
.LBB97_30:
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
	je .LBB97_31
	movaps xmm3, xmm0
	jmp .LBB97_33
.LBB97_31:
	movaps xmm3, xmm2
	movaps xmm2, xmm0
.LBB97_33:
	add rax, r14
		// src/euler.rs:312
		if order.parity_even {
	xorps xmm1, xmmword ptr [rip + .LCPI97_0]
	movss xmm0, dword ptr [rip + .LCPI97_1]
	movss dword ptr [rsp + 12], xmm0
	mov r12, rax
	jmp .LBB97_34
	mov ebp, 256
.LBB97_24:
	mov eax, 1
.LBB97_25:
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
	je .LBB97_26
	movaps xmm3, xmm0
	jmp .LBB97_28
.LBB97_26:
	movaps xmm3, xmm2
	movaps xmm2, xmm0
.LBB97_28:
	add rax, r14
	movss xmm0, dword ptr [rip + .LCPI97_2]
	movss dword ptr [rsp + 12], xmm0
	mov r15, rax
.LBB97_34:
	mov dword ptr [rsp + 56], 0
	mov qword ptr [rsp + 48], 0
	movss xmm0, dword ptr [rip + .LCPI97_3]
		// src/euler.rs:316
		let ti = angles.x * 0.5;
	mulss xmm3, xmm0
	movss dword ptr [rsp + 16], xmm3
		// src/euler.rs:317
		let tj = angles.y * 0.5;
	mulss xmm1, xmm0
		// src/euler.rs:318
		let th = angles.z * 0.5;
	mulss xmm2, xmm0
	movss dword ptr [rsp + 20], xmm2
	lea rdi, [rsp + 36]
	lea rsi, [rsp + 32]
	mov r13, qword ptr [rip + sincosf@GOTPCREL]
		// ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/num/f32.rs:702
		intrinsics::sin(self)
	movaps xmm0, xmm1
	call r13
	lea rdi, [rsp + 44]
	lea rsi, [rsp + 40]
	movss xmm0, dword ptr [rsp + 16]
	call r13
	lea rdi, [rsp + 28]
	lea rsi, [rsp + 24]
	movss xmm0, dword ptr [rsp + 20]
	call r13
	movss xmm1, dword ptr [rsp + 36]
	movss xmm0, dword ptr [rsp + 32]
	movss xmm6, dword ptr [rsp + 44]
	movss xmm5, dword ptr [rsp + 40]
	movss xmm2, dword ptr [rsp + 28]
	movss xmm3, dword ptr [rsp + 24]
		// src/euler.rs:322
		let cc = ci * ch;
	movaps xmm4, xmm3
	mulss xmm4, xmm5
		// src/euler.rs:323
		let cs = ci * sh;
	mulss xmm5, xmm2
		// src/euler.rs:324
		let sc = si * ch;
	mulss xmm3, xmm6
		// src/euler.rs:325
		let ss = si * sh;
	mulss xmm2, xmm6
		// src/euler.rs:304
		let (i, j, k) = order.angle_order();
	test ebp, 256
		// src/euler.rs:331
		if order.initial_repeated {
	jne .LBB97_37
		// src/euler.rs:338
		a[j] = (cj * ss + sj * cc) * parity;
	unpcklps xmm3, xmm5
	unpcklps xmm4, xmm2
	movaps xmm2, xmm4
	movlhps xmm2, xmm3
	shufps xmm1, xmm1, 0
	mulps xmm1, xmm2
	shufps xmm4, xmm3, 17
	shufps xmm0, xmm0, 0
	mulps xmm0, xmm4
	movaps xmm2, xmm0
	addps xmm2, xmm1
	subps xmm0, xmm1
	movsd xmm0, xmm2
	jmp .LBB97_36
.LBB97_37:
		// src/euler.rs:333
		a[j] = sj * (cc + ss) * parity;
	movaps xmm6, xmm2
	unpcklps xmm6, xmm4
	movaps xmm4, xmm6
	movlhps xmm4, xmm5
	shufps xmm2, xmm3, 0
	movlhps xmm3, xmm5
	shufps xmm6, xmm3, 129
	addps xmm2, xmm6
	subps xmm4, xmm6
	shufps xmm2, xmm4, 156
	shufps xmm2, xmm2, 120
		// src/euler.rs:335
		a[3] = cj * (cc - ss);
	unpcklps xmm1, xmm0
	movlhps xmm1, xmm1
		// src/euler.rs:333
		a[j] = sj * (cc + ss) * parity;
	mulps xmm1, xmm2
	movaps xmm0, xmm1
.LBB97_36:
	movss xmm2, dword ptr [rsp + 12]
	mulss xmm2, xmm0
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 255
	movss dword ptr [rsp + 4*r14 + 48], xmm1
	movss dword ptr [rsp + 4*r12 + 48], xmm2
	movaps xmm1, xmm0
	unpckhpd xmm1, xmm0
	movss dword ptr [rsp + 4*r15 + 48], xmm1
	shufps xmm0, xmm0, 85
	movss dword ptr [rsp + 60], xmm0
		// src/f32/coresimd/quat.rs:81
		Self(f32x4::from_array(a))
	movaps xmm0, xmmword ptr [rsp + 48]
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
