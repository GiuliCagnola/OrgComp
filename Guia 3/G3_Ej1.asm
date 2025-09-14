#GUIA 3 - EJERCICIO 1

#Implementa una función que intercambie dos valores usando solo el stack. 
# Entrada: a0 = valor1, a1 = valor2 
# Salida: a0 = valor2, a1 = valor1 

.text
.globl intercambiar
intercambiar:
	
	#asignar valores
	li a0, 10
	li a1, 15
	
	#guardar a0 en el stack
	addi sp, sp, -4 #reservar espacio 
	sw a0, 0(sp) #guardar a0 
	
	#guardar a1 en el stack
	addi sp, sp, -4 #reservar espacio 
	sw a1, 0(sp) #guardar a1
	
	#asignar a1 a a0
	lw a0, 0(sp) #recuperar dato
	addi sp, sp, 4 #mover puntero hacia arriba
	
	#asignar a0 a a1
	lw a1, 0(sp) #recuperar dato
	addi sp, sp, 4 #mover puntero hacia arriba 
ret

#luego de la ejecución en los registros se ve que a0=15 y a1=10
	
	 