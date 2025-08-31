#GUÍA 1 EJERCICIO 1

#Cargar el numero 5 al registro t0  
#a. ¿Cuantos ciclos de reloj en total le toma al procesador para cargar el numero al registro? 
#b. Sumar a t0 el valor de t1= 7

addi t0, x0, 5 #toma 5 ciclos para completar el pipeline
addi t0, x1, 7
add t0, t0, t1 #t0=5+7

#add = registrro + registro
#addi = registro + constante inmediata
