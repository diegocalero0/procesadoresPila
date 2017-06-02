.data
	pedirdatos: .asciz "ingrese los 5 numeros\012"
	
	formato: .asciz "%d"
	impresion: .asciz "Hola mundo libc, programa #%d de %d, con id %d a la edad de %d en el semestre %d\012"
	num1: .int 0
	num2: .int 0
	num3: .int 0
	num4: .int 0
	num5: .int 0

.text
	.align 2
	.arm
	.global main

main:
	push {ip, lr}
	ldr r0, =pedirdatos
	bl printf
	ldr r0, =formato
	ldr r1, =num1
	bl scanf
	ldr r0, =formato
	ldr r1, =num2
	bl scanf
	ldr r0, =formato
	ldr r1, =num3
	bl scanf
	ldr r0, =formato
	ldr r1, =num4
	bl scanf
	ldr r0, =formato
	ldr r1, =num5
	bl scanf

	ldr r0, =impresion
	ldr r1, =num1
	ldr r1, [r1]
	ldr r2, =num2
	ldr r2, [r2]
	ldr r3, =num3
	ldr r3, [r3]
	ldr r4, =num4
	ldr r4, [r4]
	ldr r5, =num5
	ldr r5, [r5]
	push {r5}
	push {r4}
	bl printf
	mov r7, #1
	svc 0
	pop {ip, pc}
	
