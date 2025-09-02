#GUÍA 2 EJERCICIO 5

#Crea un programa en ensamblador que compare dos valores y guarde el mayor en memoria

.data
a: .word 5
b: .word 10
greatest: .word 0

.text
.globl main
main:
	#cargar los valores
	lw t0, a
	lw t1, b
	
	#comparar 
	bge t0, t1, t0_grt #t0>t1
	mv t2, t1 #t1>t0
	j save
	
	t0_grt:
		mv t2, t0 
	
	save:
		la t3, greatest
		sw t2, 0(t3)
		
	li a7, 10
	ecall
	
	