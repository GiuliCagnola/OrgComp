#GU�A 2 EJERCICIO 9

#C�lculo del factorial (n!) 
#a. Pide un n�mero (simulado con una variable en memoria). 
#b. Calcula el factorial usando un bucle. 
#c. Almacena el resultado en memoria. 
#d. Revisa c�mo var�a el registro del contador en "Register View".

#el registro del contador decrementa con cada iteraci�n
.data
n: .word 4
factorial: .word 0

.text
.globl main
main:
	lw t0, n #contador
	li t1, 1 #producto
	
	loop:
		beqz t0, end
		mul t1, t1, t0 #t0=t0*t1
		addi t0, t0, -1 #t0--
		j loop
	end:
		#guardar en memoria
		la t2, factorial
		sw t1, 0(t2)
	
	li a7, 10
	ecall

