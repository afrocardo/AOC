#Autor: Ricardo Meza Díaz
#Ejercicio 1 D.

###############SEGMENTO DE DATOS###############################
.data 
dato1:  .word 10
dato2:  .word 20 
res:    .space 1 #No almacena nada en memoria,solo un numero de bytes.
                 #Es una etiqueta que guarda una posición de memoria.
                 #El byte del res va(puede)quedar en la tercera palabra.


#####################SEGMENTO DE TEXTO#########################
.text 
main: 
        
    lw $t0,dato1($0)            #Carga dato 1 en t0 
    lw $t1,dato2($0)             #Carga dato2 en t1
    #slt $t2,$t0,$t1            #Pone a 1 $t2 si t0<t1
    beq $t0, $t1, etiqueta      #Salta a etiqueta si rs es igual a rt.
    li $t2,0   
    j salta                      #Pone el registro rd a 1 si rs es menor que rt y a 0 en caso contrario .
    
   	
    salta: sb $t2,res($0)      #Almacena $t2 en res 
    etiqueta: li $t2,1
          
         

#Fin de programa	
	li $v0, 10
	syscall
