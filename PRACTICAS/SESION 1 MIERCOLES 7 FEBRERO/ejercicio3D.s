#Autor: Ricardo Meza Díaz
#Fecha: 12 Febrero 2018
#Ejercicio 3 D.

###############SEGMENTO DE DATOS##########################################
.data 

dato1:  .word 0
dato2:  .word 0
res:    .space 1 #No almacena nada en memoria,solo un numero de bytes.
                 #Es una etiqueta que guarda una posición de memoria.
                 #El byte del res va(puede)quedar en la tercera palabra.


#####################SEGMENTO DE TEXTO#####################################
.text 

main: 
        
    lw $t8,dato1($0)             #Carga dato 1 en t0 
    lw $t9,dato2($0)             #Carga dato2 en t1
    and $t0,$t0,$0
    and $t1,$t1,$0
    beq $t8,$0,igual             #Salto si igual.Si $t8 y $t0 son iguales salta a la etiqueta igual.
    ori $t0,$0,1                

    igual: beq $t8,$0,fineval
           ori $t1,$0,1
    fineval: and $t0,$t0,$t1
             sb $t0,res($0)          
    

#Fin de programa	
	li $v0, 10
	syscall
