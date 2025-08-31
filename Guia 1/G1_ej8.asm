#GUÍA 1 EJERCICIO 8

#Determinar si el valor en t0 = 6 es par (guardar 1 en t1 si es par, 0 si no)

li t0, 6
andi t1, t0, 1 #guarda el lsb de t0 en t1
xori t1, t1, 1 #si era 0 (par) pasa a 1, sino pasa a 0 (impar)


#otra forma con saltos condicionales:

    li t0, 6     
    andi t2, t0, 1 #guarda el lsb de t0 en t2
    beq t2, x0, even #t2=0 -> es par
    li t1, 0 #caso contrario -> impar
    j fin

even:
    li t1, 1 # si es par guardar 1 en t1

end:
