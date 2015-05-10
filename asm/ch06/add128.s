@ Add two 128-bit numbers and return lowest byte as exit status
@ Do it 2^32-1 times, to see if the order of instructions affects the timing
@ This version does all the adds together, so the pipeline stalls

	.global main
main:
	mov	r12, #0xFFFFFFFF
loop:
	mov	r4, #1
	mov	r5, #2
	mov	r6, #3
	mov	r7, #4
	mov	r8, #5
	mov	r9, #6
	mov	r10, #7
	mov	r11, #8
	adds	r0, r4, r8
	adcs	r1, r5, r9
	adcs	r2, r6, r10
	adcs	r3, r7, r11

	subs	r12, r12, #1
	bne	loop

	mov	r7, #1
	swi	0
