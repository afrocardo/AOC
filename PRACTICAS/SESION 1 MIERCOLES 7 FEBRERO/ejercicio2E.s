#Autor: Ricardo Meza Díaz
#Ejercicio 2 E.

###############SEGMENTO DE DATOS###############################
.data 
dato1:  .word 20
dato2:  .word 20 
res:    .space 1 #No almacena nada en memoria,solo un numero de bytes.
                 #Es una etiqueta que guarda una posición de memoria.
                 #El byte del res va(puede)quedar en la tercera palabra.


#####################SEGMENTO DE TEXTO#########################
.text 
main: 
        
    lw $t0,dato1($0)            #Carga dato 1 en t0 
    lw $t1,dato2($0)             #Carga dato2 en t1
    li $t2, 1
    sb $t2, res($0)
          
         

#Fin de programa	
	li $v0, 10
	syscall
