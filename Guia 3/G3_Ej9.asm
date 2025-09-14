#GUIA 3 - EJERCICIO 9

#Analiza este código:
#a. ¿Cuántos bytes usa el stack frame? 
#b. ¿Por qué se guardan s0 y s1? 
#c. ¿Qué representa el registro s0?

misterio: 

addi sp, sp, -16 #reservar 16 bytes en el stack
sw ra, 12(sp) #guardar la dirección de retorno
sw s0, 8(sp) #guardar el registro s0
sw s1, 4(sp) #guardar el registro s1
addi s0, sp, 16 #establecer el frame pointer
# ... código ... 
lw ra, 12(sp) #restaurar ra
lw s0, 8(sp) #restaurar s0
lw s1, 4(sp) #restaurar s1
addi sp, sp, 16 #liberar espacio en el stack
ret #volver a la función

#a. El stack grame usa 16 bytes
#b. Se guardan los valores de s0 y s1 para poder restaurar los valores antes del return
#c. El registro s0 se usa como puntero que apunta al inicio del stack
