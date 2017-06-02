.data
	formato: .asciz "%d"
	num:: .int 0
	tiempo: .int 2
	hola: .asciz "Profe ponganos 5 esto no fue facil\012"
	inicial: .word 1
	toprint: .asciz "el numero es: %d\012"

.text 
	.align 2
	.arm
	.global main

main:
	push{ip, lr}
	ldr r0, =formato
	ldr r1, =num
	bl scanf
	ldr r5, =inicial
	ldr r5= [r5]
	ldr r6, =num
	ldr r6, [r6]
	add r6, r6, #1
	ldr r0, =hola
	bl printf

.ciclo:
	ldr r0, =toprint
	ldr r1, =num
	ldr r1, [r1]
	bl printf
	ldr r0, =tiempo
	ldr r0, [r0]
	bl sleep
	add r5, r5, #1
	cmp r5,r6
	bge .finciclo
	b .ciclo
	pop {ip, pc}
.finciclo:
	mov r7, #1
	svc 0
