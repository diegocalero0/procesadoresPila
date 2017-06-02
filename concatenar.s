.data
	cadena1: .asciz "procesadores"
	cadena2: .asciz "ensamblador\012"

.text
	.align 2
	.arm
	.global main

main:
	mov r7, #4
	mov r0, #1
	mov r2, #12
	ldr r1, =cadena1
	svc 0
	mov r7, #4
	mov r0, #1
	mov r2, #12
	ldr r1, =cadena2
	svc 0
	mov r7, #1
	svc 0
