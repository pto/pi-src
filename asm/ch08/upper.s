@ Echo a line of text in upper case

	.text
	.global _start
_start:
	@ Get a line
	mov	r0, #0		@ STDIN
	ldr	r1, =buffer
	mov	r2, #len_buffer
	mov 	r7, #3		@ read
	swi	0

        @ r0: number of bytes read
        @ r1: start of buffer
        @ r2: address of current byte
        @ r3: value of current byte
        @ r4: 'a'
        @ r5: 'z'

        ldr     r1, =buffer
        add     r2, r0, r1
        mov     r4, #'a'
        mov     r5, #'z'
loop:
        sub     r2, r2, #1
        cmp     r2, r1
        blt     done            @ reached beginning of buffer
        
        mov     r3, #0
        ldrb    r3, [r2]
        cmp     r3, r4
        blt     loop            @ < 'a'
        cmp     r3, r5
        bgt     loop            @ > 'z'
        bic     r3, r3, #0x20   @ make it upper case
        strb    r3, [r2]
        b       loop
done:   
	@ Write the string
        mov     r2, r0          @ length
	mov	r0, #1		@ STDOUT	
	ldr	r1, =buffer
	mov	r7, #4		@ write
	swi	0
	
	@ Exit
	mov	r0, #0		@ success
	mov	r7, #1		@ exit
	swi	0

	.data
buffer:
	.fill   1024
	.set	len_buffer, .-buffer
