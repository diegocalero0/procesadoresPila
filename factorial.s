.data
	formato: .asciz "%d"
	num: .int 0
	tiempo: .int 2
	info: .asciz "El factorial de %d es %d\012"
	inicial: .word 1
	toprint: .asciz "el numero es: %d\012"
.text 
	.align 2
	.arm
	.global main

main:
	push {ip, lr}
	ldr r0, =formato
	ldr r1, =num
	bl scanf
	ldr r6, =num
	ldr r6, [r6]
	mov r9, r6
	add r9, r9, #1
	mov r4, #1
	mov r5, #1
	mov r7, #1
	mov r8, #1

.ciclo:
	mul r8,r7
	mov r4, r5
	mov r5, r8
	add r7, r7, #1
	cmp r7, r9
	bge .finciclo
	b.ciclo
	pop {ip, pc}
.finciclo:
	ldr ro, =info
	mov r1, r6
	mov r2,r8
	bl printf
	mov r7, #1
	svc 0
