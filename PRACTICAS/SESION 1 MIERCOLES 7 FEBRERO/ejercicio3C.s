#Autor: Ricardo Meza Díaz
#Ejercicio 3 C.

###############SEGMENTO DE DATOS###############################
.data 
dato1:  .word 20
dato2:  .word 0
res:    .space 1 #No almacena nada en memoria,solo un numero de bytes.
                 #Es una etiqueta que guarda una posición de memoria.
                 #El byte del res va(puede)quedar en la tercera palabra.


#####################SEGMENTO DE TEXTO#########################
.text 
main: 
        
    lw $t8,dato1($0)            #Carga dato 1 en t0 
    lw $t9,dato2($0)             #Carga dato2 en t1
    and $t0,$t0,$0
    and $t1,$t1,$0
    beq $t8,$0,igual
    ori $t0,$0,1

    igual: beq $t8,$0,igual
           ori $t1,$0,1
    fineval: and $t0,$t0,$t1
             sb $t0,res($0)          
    

#Fin de programa	
	li $v0, 10
	syscall
