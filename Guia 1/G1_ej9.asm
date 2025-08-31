#GUÍA 1 EJERCICIO 9

#Rotar el valor en t0 = 13 (0b1101), 1 bit a la derecha (el bit que sale por la derecha entra por la izquierda)
#¿Cómo se vería afectado el pipeline si se repite la rotación en un bucle?

li t0, 13 #b1101
li t1, 0 #máscara
li t2, 0 #resultado

andi t1, t0, 1 #t1 = lsb de t0 (el que rota)
srai t2, t0, 1 #desplazamiento lógico a la derecha
slli t1, t1, 3 #bit rotado a la posición 3 (msb)
or t0, t2, t1 #t0_nuevo = t2 xor t1

#t0_nuevo = 14 (b1110)