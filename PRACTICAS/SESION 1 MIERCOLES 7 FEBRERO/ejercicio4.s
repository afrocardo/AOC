#REVISAR.
#Autor: Ricardo Meza Díaz
#Fecha: 12 Febrero 2018
#Ejercicio 4.

###############SEGMENTO DE DATOS##########################################
.data 

dato1:  .word 30
dato2:  .word -50
res:    .space 1 #No almacena nada en memoria,solo un numero de bytes.
                 #Es una etiqueta que guarda una posición de memoria.
                 #El byte del res va(puede)quedar en la tercera palabra.


#####################SEGMENTO DE TEXTO#####################################
.text 

main: 
        
    lw $t8,dato1($0)             #Carga dato 1 en t0 
    lw $t9,dato2($0)             #Carga dato2 en t1


    and $t1,$t1,$0
    and $t0,$t0,$0
    beq $t8,$0,igual
    ori $t0,$0,1                #ori rt, rs, inm.Operación OR bit a bit entre el dato inmediato,extendiendo ceros, y el registro rs. El resultado se almacena en rt.                                     

    igual: slt $t1,$t9,$t8      #slt rd, rs, rt.Si t9 es menor que t8 pone t1 a 1.Sino, a 0.
    
    fineval: and $t0,$t0,$t1
             sb $t0,res($0)
             
    

#Fin de programa	
	li $v0, 10
	syscall
