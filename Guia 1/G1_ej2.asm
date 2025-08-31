#GUÍA 1 EJERCICIO 2

#Dados los valores en t0 = 3, t1 = 5, y t2 = 7, calcular t3 = t0 + t1 + t2. 
#a. Realiza primero la ejecución con “forwarding activated” y luego con “forwarding deactivated” 
#b. ¿Qué diferencias encuentras en el pipeline cuando se activa y desactiva “forwarding”? 

#registros
    li t0, 3        
    li t1, 5       
    li t2, 7       


    add t3, t0, t1  # t3 = t0 + t1
    # Forwarding ON: t3 se puede usar en la siguiente instrucción sin esperar a WB
    # Forwarding OFF: habrá que esperar hasta que t3 esté escrito en WB

    add t3, t3, t2  # t3 = t3 + t2
    # Forwarding ON: toma t3 desde EX/MEM de la instrucción anterior
    # Forwarding OFF: debe esperar a que t3 esté en WB (se generan stalls)
