#GUÍA 2 EJERCICIO 10

#Fibonacci en ensamblador 
#a. Genera la secuencia de Fibonacci hasta n=10. 
#b. Guarda los valores en memoria.

.data
n: .word 10
fibonacci: .space 40 #10 enteros x 4 bits
newline: .string " "


.text
.globl main
main:
	lw t0, n #cargar n en registro
	li t1, 0 #primer nro
	li t2, 1 #segundo nro
	la t3, fibonacci #puntero al array
	li t4, 0 #contador de posición
	
	loop:
		beq t4, t0, end #si contador = n break
		
		#guardar t1 en memoria
		sw t1, 0(t3)
		
		#print
		li a7, 1    
		mv a0, t1
		ecall

		li a7, 4
		la a0, newline
		ecall
		
		#calcular siguiente nro
		add t5, t1, t2 #t5=t1+t2
		mv t1, t2 #t1=t2
		mv t2, t5 #t2=t5
		
		#avanzar puntero
		addi t3, t3, 4 
		
		addi t4, t4, 1 #t4++
		j loop
	
	end:
		li a7, 10
		ecall
		
	
	
	