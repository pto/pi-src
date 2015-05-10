@ Demonstrate Multiply Accumulate

	.global main
main:
	mov	r1, #6
	mov	r2, #20
	mov	r3, #3
	mla	r0, r1, r2, r3
	mov	r7, #1
	swi	0
