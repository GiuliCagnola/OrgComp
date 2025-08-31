#GUÍA 1 EJERCICIO 10
 
#Comparar dos valores en registros y almacenar el mayor en otro registro

li t0, 5
li t1, 10
li t2, 0 #para almacenar el mayor

bge t0, t1, t0_grt #saltar si t0>t1
add t2, x0, t1 #si t1>t0 guarda t1 en t2
j end

t0_grt:
add t2, x0, t0 #si t0>=t1 guarda t0 en t2

end: 