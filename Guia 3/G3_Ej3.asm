#GUIA 3 - EJERCICIO 3

#Calcula la suma de todos los elementos de un array

.data 
array: .word 3, 7, 2, 9, 5, 1 
length: .word 6 
result: .word 0 

.text 
.globl main
main:
    # cargar la dirección del array y la longitud
    la t0, array       # t0 = puntero al array
    lw t1, length      # t1 = longitud
    li t2, 0           # t2 = acumulador
    li t3, 0           # t3 = índice

loop:
    bge t3, t1, end    # si índice >= longitud, salir
    lw t4, 0(t0)       # cargar array[i]
    add t2, t2, t4     # suma += array[i]
    addi t0, t0, 4     # avanzar puntero
    addi t3, t3, 1     # índice++
    j loop

end:
    # guardar resultado en memoria
    la t5, result
    sw t2, 0(t5)
    
    # imprimir el resultado final
    mv a0, t2
    li a7, 1
    ecall

    # salir del programa
    li a7, 10
    ecall
