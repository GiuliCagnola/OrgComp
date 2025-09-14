#GUIA 3 - EJERCICIO 5

#Convierte Celsius a Fahrenheit: F = (C × 9/5) + 32 
# Entrada: a0 = temperatura en Celsius 
# Salida: a0 = temperatura en Fahrenheit 

.data
celsius: .word 25
fahrenheit: .word 0

.text
.globl main
main:
	lw a0, celsius
	jal ra, convert
	
	#guardar en memoria
	la t0, fahrenheit 
	sw a0, 0(t0)
	
	#print
	mv a0, a0
	li a7, 1
	ecall
	
	#break
	li a7, 10
	ecall
	
convert:
	li t0, 9
	li t1, 5
	mul a0, a0, t0 #C*9
	div a0, a0, t1 #C/5
	addi a0, a0, 32 #C+32
	ret 
	