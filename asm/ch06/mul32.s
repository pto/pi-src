@ Multiply two 32-bit numbers

	.global main
main:
	mov	r1, #6
	mov	r2, #7
	mul	r0, r1, r2
	mov	r7, #1
	swi	0
