#REVISAR.CREO QUE ESTA BIEN
#Autor: Ricardo Meza Díaz
#Fecha: 12 Febrero 2018
#Ejercicio 4F.Añade la pseudoinstrucción sle.

###############SEGMENTO DE DATOS##########################################
.data 

dato1:  .word 0
dato2:  .word -20
res:    .space 1 #No almacena nada en memoria,solo un numero de bytes.
                 #Es una etiqueta que guarda una posición de memoria.
                 #El byte del res va(puede)quedar en la tercera palabra.


#####################SEGMENTO DE TEXTO#####################################
.text 

main: 
        
    lw $t8,dato1($0)             #Carga dato 1 en t0 
    lw $t9,dato2($0)             #Carga dato2 en t1

    bne $t8,$t9,distintos                          #bne rs, rt, etiqueta. Si rs y rt son distintos salta a etiqueta.

      
    distintos: li $t1,1                          #li reg,dato. carga el dato inmediato en el registro reg.
    
                                                                            
    sle $t2,$t8,$t9                              #sle rdest, rsrc1, rsrc2 .Pone el registro rdest a 1 si rsrc1 es menor o igual que rsrc2 y a 0 en caso contrario.

    ori $t3,$t2,1                               #andi rt, rs, inm.
    
    
    or $t4,$t1,$t3
    sb $t4,res($0)
             
    

#Fin de programa	
	li $v0, 10
	syscall
