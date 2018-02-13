#REVISAR.
#Autor: Ricardo Meza Díaz
#Fecha: 12 Febrero 2018
#Ejercicio 3 F.

###############SEGMENTO DE DATOS##########################################
.data 

dato1:  .word 1
dato2:  .word 1
res:    .space 1 #No almacena nada en memoria,solo un numero de bytes.
                 #Es una etiqueta que guarda una posición de memoria.
                 #El byte del res va(puede)quedar en la tercera palabra.


#####################SEGMENTO DE TEXTO#####################################
.text 

main: 
        
    lw $t8,dato1($0)             #Carga dato 1 en t0 
    lw $t9,dato2($0)             #Carga dato2 en t1

    bne $t8,0,distintos                          #bne rs, rt, etiqueta. Si rs y rt son distintos salta a etiqueta.
              

    distintos: li $t1,1                          #li reg,dato. carga el dato inmediato en el registro reg.
    
    bne $t8,$t9,distintos2

    distintos2: li $t2,1    

    and $t3,$t1,$t2   
    sb $t3,res($0)                                 #and rd, rs, rt
             
    

#Fin de programa	
	li $v0, 10
	syscall
