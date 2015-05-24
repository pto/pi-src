@ Print a number in binary

        .global _start
_start:
        mov     r8, #251                @ number to print
        mov     r10, #1                 @ one-bit mask
        mov     r9, r10, lsl #31        @ initial mask is bit 31
        ldr     r1, =string             @ address for charater to output

_bits:
        tst     r8, r9                  @ test the mask bit
        beq     _print0                 @ mask bit is zero

        @ Print '1'
        mov     r0, #'1'
        str     r0, [r1]
        bl      _write
        b       _after_print

_print0:
        @ Print '0'
        mov     r0, #'0'
        str     r0, [r1]
        bl      _write

_after_print:
        movs    r9, r9, lsr #1          @ move mask to next bit
        bne     _bits

        @ Print '\n'
        mov     r0, #'\n'
        str     r0, [r1]
        bl      _write

_exit:
        mov     r7, #1
        swi     0

_write:
        @ r1 already holds address of the character to print
        mov     r0, #1          @ stdout
        mov     r2, #1          @ one character
        mov     r7, #4          @ write syscall
        swi     0
        mov     pc, lr

        .data
string:
        .ascii  " "
