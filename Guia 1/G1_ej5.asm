#GUÍA 1 EJERCICIO 5

#Calcular el valor absoluto de t0 = -42 y guardarlo en t1. 
#¿Qué ocurre en el pipeline si t0 es positivo? 

li t0, -42
li t1, 0

bgez t0, pos #si t0>=0 saltar a pos
sub t1, x0, t0 #t1=0-t0 -> se invierte el signo
j end 

pos:
add t1, x0, t0 #t1=t0 ->ya es positivo

end: