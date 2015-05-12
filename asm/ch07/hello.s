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
	.ascii	"Hello, world!\n"
	.ascii	"This message is coming to you in pure assembly code.\n"
	.ascii	"Thank the assembler for counting the characters!\n"
	.set	length, .-message
