#GUÍA 1 EJERCICIO 3

#Intercambiar los valores de t0 = 10 y t1 = 20 sin usar registros adicionales

li t0, 10
li t1, 20

#xor bit a bit
xor t0, t0, t1 #t0 = t0 xor t1
xor t1, t0, t1 #t1 = t0 xor t1 -> t1=10
xor t0, t0, t1 #to = t0 xor t1 -> t0=20

