#GUÍA 2 EJERCICIO 8
#Implemente una subrutina que reciba dos números y devuelva su máximo

.data
n1: .word 5
n2: .word 1
greatest: .word 0

.text
.globl main
main:
	#cargar registros
	lw a0, n1
	lw a1, n2
	
	#llamar a la subrutina
	jal ra, maximo
	
	#guardar en memoria
	la t0, greatest
	sw a0, 0(t0)
	
	#salir
	li a7, 10
	ecall
	

#-----subrutina máximo-----
maximo:
	bge a0, a1, a0_grt#a0 >= a1
	mv a0, a1 # caso contrario
a0_grt:
	ret
