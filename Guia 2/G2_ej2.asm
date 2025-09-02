#GUÍA 2 EJERCICIO 2

#Implementa una función que recorra un array de 5 enteros y sume todos sus elementos 
#usando direccionamiento indexado (registro base + desplazamiento)

.data
array: 2,2,2,2,2
suma: .word 0 

.text 
.globl main
main: 
	la t0, array #t0 apunta al inicio del array
	li t1, 5 #cantidad de elementos
	li t2, 0 #suma
	li t3, 0 #índice (offset)
	
	loop:
		beq t3, t1, end #si indice = 5 terminar
		lw t4, 0(t0) #cargar elemento actual
		add t2, t2, t4 #sumar
		addi t0, t0, 4 #pasar al siguiente elemento (4 bits)
		addi t3, t3, 1 #incrementar índice
		j loop
	end:
		la, t5, suma
		sw t2, 0(t5) #guardar el resultado en memoria
		
	
    	li a7, 10 #break
    	ecall