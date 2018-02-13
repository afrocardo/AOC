#Autor: Ricardo Meza Díaz
#Ejercicio 2 F.

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
    slt $t2,$t0,$t1            #Pone a 1 $t2 si t0<t1      
    #bne $t0,$t1,fineval         #Si t0<>t1 salta a fineval 
    #ori $t2,$0,1                #Poner a 1 t2 si t0=t1     
    #fineval: sb $t2,res($0)     #almacena $t2 en res
    	
	slt $t2, $t0, $t1		#poner a 1 $t2 si t0<t1
	sub $s2, $s2, $s2		#Pone un registro a 0
	beq $t2, $s2, fineval	#Compara con 0
	sub $t2, $t2, $t2
	j sigue
	
	fineval:
		addi $t2, $t2, 1
	
	sigue: 
	#sb $t2, res($0)    
         

#Fin de programa	
	li $v0, 10
	syscall
