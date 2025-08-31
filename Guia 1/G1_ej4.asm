#GUÍA 1 EJERCICIO 4

#Calcular t2 = t0 * t1 usando sumas repetidas. (t0 = 4 y t1= 3)

li t0, 4
li t1, 3
li t2, 0

add t2, t2, t0 #t2+=t0 -> t2=4
add t2, t2, t0 #t2+=t0 -> t2=8
add t2, t2, t0 #t2+=t0 -> t2=12

#otra forma más general:
loop:
    beq t1, x0, end # si t1=0 break
    add t2, t2, t0  # t2+=+t0
    addi t1, t1, -1 # t1-=1
    j loop          # repetir

end:
