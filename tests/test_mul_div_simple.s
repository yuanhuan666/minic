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
	sub sp,sp,#44
	movw r0,#:lower16:10
	str r0,[fp,#-8]
	movw r0,#:lower16:5
	str r0,[fp,#-12]
	ldr r0,[fp,#-8]
	ldr r1,[fp,#-12]
	mul r2,r0,r1
	str r2,[fp,#-28]
	ldr r0,[fp,#-28]
	str r0,[fp,#-16]
	ldr r0,[fp,#-16]
	ldr r1,[fp,#-12]
	sdiv r2,r0,r1
	str r2,[fp,#-32]
	ldr r0,[fp,#-32]
	str r0,[fp,#-20]
	movw r0,#:lower16:3
	movw r1,#:lower16:4
	mul r2,r0,r1
	str r2,[fp,#-36]
	movw r0,#:lower16:2
	ldr r1,[fp,#-36]
	add r2,r0,r1
	str r2,[fp,#-40]
	ldr r0,[fp,#-40]
	str r0,[fp,#-24]
	ldr r0,[fp,#-16]
	bl putint
	ldr r0,[fp,#-20]
	bl putint
	ldr r0,[fp,#-24]
	bl putint
	ldr r0,[fp,#-16]
	ldr r1,[fp,#-20]
	add r2,r0,r1
	str r2,[fp,#-44]
	ldr r0,[fp,#-44]
	str r0,[fp,#-4]
	b .L0
.L0:
	ldr r0,[fp,#-4]
	mov sp,fp
	pop {r10,fp,lr}
	bx lr
