.arch armv7ve
.arm
.fpu vfpv4
.text
.align 1
.global main
.type main, %function
main:
	push {r10,fp,lr}
	mov fp,sp
	sub sp,sp,#28
	movw r0,#:lower16:10
	str r0,[fp,#-8]
	movw r0,#:lower16:10
	str r0,[fp,#-12]
	movw r0,#:lower16:10
	str r0,[fp,#-16]
	movw r0,#:lower16:255
	str r0,[fp,#-20]
	ldr r0,[fp,#-8]
	bl putint
	ldr r0,[fp,#-12]
	bl putint
	ldr r0,[fp,#-16]
	bl putint
	ldr r0,[fp,#-20]
	bl putint
	ldr r0,[fp,#-8]
	ldr r1,[fp,#-12]
	add r2,r0,r1
	str r2,[fp,#-24]
	ldr r0,[fp,#-24]
	ldr r1,[fp,#-16]
	add r2,r0,r1
	str r2,[fp,#-28]
	ldr r0,[fp,#-28]
	str r0,[fp,#-4]
	b .L0
.L0:
	ldr r0,[fp,#-4]
	mov sp,fp
	pop {r10,fp,lr}
	bx lr
