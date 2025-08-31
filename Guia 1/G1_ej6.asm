#GUÍA 1 EJERCICIO 6

#Almacenar el máximo entre t0  = 8 y t1 = 12 en t2

li t0, 8
li t1, 12
li t2, 0

bge t0, t1, t0_grt #si t0>t1 saltar a t0_grt
add t2, x0, t1 #t2=t1 (t1 es mayor)
j end

t0_grt:
t2, x0, t0 #t2=t0 (t0 es mayor o igual)

end:
