#GUIA 3 - EJERCICIO 4

#Encuentra el valor m�ximo en un array de enteros. 
# Entrada: a0 = direcci�n array, a1 = longitud 
# Salida: a0 = valor m�ximo 

.data
array: .word 2, 4, 6, 8, 2, 4, 6
length: .word 7

.text
.globl main
main:
	#cargar la direcci�nen a0
	la a0, array
	#cargar la longitud en a1
	lw a1, length
	
	#llamada a la subrutina
	jal ra, maximo
	
	#print
	mv a0, a0 
	li a7, 1  
	ecall
	
	#break
	li a7, 10
	ecall
	
maximo:
	lw t0, 0(a0) #t0 = array[0]
	li t1, 1 #indice
	
loop:
	bge t1, a1, end
	
	slli t2, t1, 2 #offset = i*4bytes
	add t3, a0, t2 #direcci�n array[i]
	lw t4, 0(t3) #cargar valor actual
	
	blt t0, t4, update #array[i]>maximo -> actualizar
	j next

update:
	mv t0, t4 #t0 guarda el valor de t4

next:
	addi t1, t1, 1 #indice++
	j loop

end:
	mv a0, t0 #retornar el m�ximo en a0
	ret
	
	