#GUÍA 2 EJERCICIO 3

#Implemente un programa que multiplique los primeros 4 números enteros positivos (empleando bucles)
#salto condicional -> rompe el flujo de pipeline
#4 instrucciones x 4 iteraciones + 3 instrucciones de inicio y 1 de fin = 20 ciclos de reloj

.data
resultado: .word 0

.text
.globl main
main:
	li t0, 1 #acumulador
	li t1, 1 #contador
	li t2, 4 #limite
	
	loop:
		bgt t1, t2, end #si contador >4 break
		mul t0, t0, t1 #t0=t0*t1
		addi t1, t1, 1 #incrementar contador
		j loop
	end:
		la t3, resultado
		sw t0, 0(t3) #guardar resultado en memoria
		
li a7, 10  
ecall
