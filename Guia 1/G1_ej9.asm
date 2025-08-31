#GU�A 1 EJERCICIO 9

#Rotar el valor en t0 = 13 (0b1101), 1 bit a la derecha (el bit que sale por la derecha entra por la izquierda)
#�C�mo se ver�a afectado el pipeline si se repite la rotaci�n en un bucle?

li t0, 13 #b1101
li t1, 0 #m�scara
li t2, 0 #resultado

andi t1, t0, 1 #t1 = lsb de t0 (el que rota)
srai t2, t0, 1 #desplazamiento l�gico a la derecha
slli t1, t1, 3 #bit rotado a la posici�n 3 (msb)
or t0, t2, t1 #t0_nuevo = t2 xor t1

#t0_nuevo = 14 (b1110)