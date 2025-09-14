#GUIA 3 - EJERCICIO 7

#Calcula el n-ésimo número de Fibonacci sin recursión. 
# Entrada: a0 = n 
# Salida: a0 = fib(n) 

.data
n: .word 10
n_fibonacci: .word 0

.text
.globl main
main:
	lw a0, n 
	jal ra, fibonacci
	
	#guardar en memoria
	la t0, n_fibonacci
	sw a0, 0(t0)
	
	#print
	mv a0, a0
	li a7, 1
	ecall
	
	#break
	li a7, 10
	ecall
	

fibonacci:

	beqz a0, end_0 #n=0
	
	li t0, 1
	beq a0, t0, end_1 #n=1
	
	#variables
	li t1, 0 #f0=0
	li t2, 1 #f1=1
	li t3, 2 #contador
	
loop:
	bge t3, a0, end #si contador=n terminar
	
	add t4, t1, t2 #t4=f0+f1
	
	mv t1, t2 #f0=f1
	mv t2, t4 #f1=t4
	
	addi t3, t3, 1 #i++
	j loop
	
end:
	mv a0, t2 #resultado = f1
	jalr x0, ra, 0
	
end_0:
	li a0, 0
	jalr x0, ra, 0


end_1:
	li a0, 1
	jalr x0, ra, 0

	
	