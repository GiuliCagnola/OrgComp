#GUIA 3 - EJERCICIO 6

#Verifica si un string en memoria es palíndromo 


.data 
string: .asciz "anitalavalatina" 
length: .word 15
es_palindromo: .word 0 #1->si, 0->no

.text
.globl main
main:
	#cargar dirección del string
	la t0, string
	#cargar longitud del string
	lw t1, length
	
	addi t2, t1, -1 #indice final
	li t3, 0 #indice inicial
	li t4, 1 #flag del palíndromo
	
loop:
	bge t3, t2, end #si los índices se cruzan terminar
	
	#cargar caracteres
	addi t5, t0, 0 
	add t5, t5, t3 #string[i]
	lbu t6, 0(t5) ##caracter inicial
	
	addi t5, t0, 0
	add t5, t5, t2 #string[j]
	lbu s0, 0(t5) #caracter final
	
	bne t6, s0, no_palindromo #si t6!=s0 no es palíndromo
	
	#iterar
	addi t3, t3, 1 #i++
	addi t2, t2, -1 #j-- 
	j loop #(j de la iteracion, no del string)

no_palindromo:
	li t4, 0 
	j end

end:
	#guardar resultado en memoria
	la t5, es_palindromo
	sw t4, 0(t5)
	
	#print
	mv a0, t4
	li a7, 1
	ecall
	
	#break
	li a7, 10
	ecall