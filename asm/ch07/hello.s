@ Assembly version of Hello World

	.text
	.global _start
_start:
	mov	r0, #1		@ STDOUT	
	ldr	r1, =message
	mov	r2, #length
	mov	r7, #4
	swi	0
	mov	r7, #1
	swi	0

	.data
message:
	.ascii	"Hello, assembly world!\n"
	.set	length, .-message
