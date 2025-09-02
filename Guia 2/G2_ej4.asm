#GUÍA 2 EJERCICIO 4

#Escriba un programa que reciba un número y cuente regresivamente hasta 0 con un WHILE 

.data
n: .word 9

.text
.globl main
main:
	la t0, n #cargar n en t0
	lw t1, 0(t0) #contador
	
	while:
		blt t1, x0, end #si t1<0 break
		
		#print
		li a7, 1
		mv a0, t1 
		ecall
		
		addi t1, t1, -1 #t1--
		j while
	end:
		li a7, 10       # terminar
		ecall