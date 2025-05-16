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
	sub sp,sp,#28
	movw r0,#:lower16:2
	str r0,[fp,#-8]
	movw r0,#:lower16:3
	str r0,[fp,#-12]
	ldr r0,[fp,#-8]
	ldr r1,[fp,#-12]
	add r2,r0,r1
	str r2,[fp,#-24]
	ldr r0,[fp,#-24]
	movw r1,#:lower16:2
	add r2,r0,r1
	str r2,[fp,#-28]
	ldr r0,[fp,#-28]
	str r0,[fp,#-4]
	b .L0
.L0:
	ldr r0,[fp,#-4]
	mov sp,fp
	pop {r10,fp}
	bx lr
