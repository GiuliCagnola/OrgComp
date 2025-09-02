#GUÍA 2 EJERCICIO 6

#Escribir un programa que implemente un contador ascendente hasta un valor determinado usando un ciclo FOR

.data
n: .word 9

.text
.globl main
main:
	lw t0, n
	li t1, 0 #contador
	
	loop:
		bgt t1, t0, end
		
		#print
		li a7, 1
		mv a0, t1 
		ecall
		
		addi t1, t1, 1 #t1++
		j loop
	end:

li a7, 10   
ecall
	
