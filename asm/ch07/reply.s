@ Get a few characters and echo them back in greeting

	.text
	.global _start
_start:
	@ Get a name
	mov	r0, #0		@ STDIN
	ldr	r1, =name
	mov	r2, #len_name
	mov 	r7, #3		@ read
	swi	0
	sub	r8, r0, #1	@ save length without newline
	
	@ Write "Hello, "
	mov	r0, #1		@ STDOUT	
	ldr	r1, =hello
	mov	r2, #len_hello
	mov	r7, #4		@ write
	swi	0

	@ Write the name
	mov	r0, #1		@ STDOUT	
	ldr	r1, =name
	mov	r2, r8
	mov	r7, #4		@ write
	swi	0
	
	@ Write "!\n"
	mov	r0, #1		@ STDOUT	
	ldr	r1, =ending
	mov	r2, #len_ending
	mov	r7, #4		@ write
	swi	0

	@ Exit
	mov	r0, #0		@ success
	mov	r7, #1		@ exit
	swi	0

	.data
hello:
	.ascii	"Hello, "
	.set	len_hello, .-hello
name:
	.ascii  "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
	.set	len_name, .-name
ending:
	.ascii	"!\n"
	.set	len_ending, .-ending
