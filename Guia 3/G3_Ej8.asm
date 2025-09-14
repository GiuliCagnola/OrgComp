#GUIA 3 - EJERCICIO 8

#Convierte un string a mayúsculas in-place

.data 
texto: .asciz "Hola Mundo RISC-V" 

.text
.globl main
main:
	la a0, texto
	jal ra, mayusculas
	
	#print
	la a0, texto
	li a7, 4
	ecall
	
	#break
	li a7, 10
	ecall
	
mayusculas:
	li t0, 0 #índice
	
	loop:
		add t1, a0, t0 #dirección del caracter actual
		lbu t2, 0(t1) #cargar byte actual
		
		beq t2, x0, end
		
		#si es minúscula restar 32 (ascii)
		li t3, 97 #a
		li t4, 122 #z
		
		blt t2, t3, next #t2<a
		bgt t2, t4, next #t2>z
		
		li t5, 32
		sub t2, t2, t5 #convertir a mayúscula
		sb t2, 0(t1) #escribir en memoria
		
	next:
		addi t0, t0, 1 #i++
		j loop
		
	end:
		jalr x0, ra, 0
