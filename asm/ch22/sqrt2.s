@ Print the square root of 2

	.text
	.global main
main:
        ldr     r1, =dbl2
        vldr    d4, [r1]
        vsqrt.f64 d5, d4
        
        ldr     r0, =format
        vmov    r2, r3, d5
        bl      printf 

        mov     r7, #1
        swi     0

        .data
        .align  8
dbl2:   .double 2
format: .asciz "%.15f\n"
