#GUÍA 2 EJERCICIO 1

#Escribe un programa en ensamblador que: 
#a. Cargue dos números en registros. 
#b. Realice suma, resta, multiplicación y división. 
#c. Almacene los resultados en memoria. 
#d. Verifica en "Register View" que los valores sean correctos. 

.data
suma: .word 0
resta: .word 0
multiplicacion: .word 0
division: .word 0

.text
.globl main
main:
    # cargar valores en registros
    li t0, 12       
    li t1, 6       

    # operaciones
    add t2, t0, t1   # t2 = t0 + t1
    sub t3, t0, t1   # t3 = t0 - t1
    mul t4, t0, t1   # t4 = t0 * t1
    div t5, t0, t1   # t5 = t0 / t1

    # guardar resultados en memoria
    la t6, suma
    sw t2, 0(t6)

    la t6, resta
    sw t3, 0(t6)

    la t6, multiplicacion
    sw t4, 0(t6)

    la t6, division
    sw t5, 0(t6)

    ecall

	
	
	