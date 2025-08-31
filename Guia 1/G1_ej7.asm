#GUÍA 1 EJERCICIO 7

#Contar cuántos bits están en 1 en t0 = 21(b10101) y guardar el resultado en t1
#¿Cuantas iteraciones usa el procesador? 

li t0, 21
li t1, 0 #contador

loop: 
	beq t0, x0, end #so t0=0 terminar
	andi t2, t0, 1 #extrae el lsb de t0
	add t1, t1, t2 #t1+=1
	srai t0, t0, 1 #desplazamiento a la derecha
	j loop
end:
