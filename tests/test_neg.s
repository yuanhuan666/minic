.arch armv7ve
.arm
.fpu vfpv4
.text
.align 1
.global main
.type main, %function
main:
	push {r10,fp}
	mov fp,sp
	sub sp,sp,#32
	movw r0,#:lower16:5
	str r0,[fp,#-8]
	movw r0,#:lower16:0
	ldr r1,[fp,#-8]
	sub r2,r0,r1
	str r2,[fp,#-20]
	ldr r0,[fp,#-20]
	str r0,[fp,#-12]
	movw r0,#:lower16:0
	ldr r1,[fp,#-12]
	sub r2,r0,r1
	str r2,[fp,#-24]
	movw r0,#:lower16:0
	ldr r1,[fp,#-24]
	sub r2,r0,r1
	str r2,[fp,#-28]
	ldr r0,[fp,#-28]
	str r0,[fp,#-16]
	ldr r0,[fp,#-12]
	ldr r1,[fp,#-16]
	add r2,r0,r1
	str r2,[fp,#-32]
	ldr r0,[fp,#-32]
	str r0,[fp,#-4]
	b .L0
.L0:
	ldr r0,[fp,#-4]
	mov sp,fp
	pop {r10,fp}
	bx lr
