@ 64-bit subtraction (subtracting 1 from 2^32)

	.global main
main:
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	mov	r4, #0
	subs	r0, r1, r2
	sbc	r1, r3, r4
	mov	r0, r1		@ to see upper word
	mov	r7, #1
	swi	0
