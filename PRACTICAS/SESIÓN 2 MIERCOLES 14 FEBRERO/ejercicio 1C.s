
#Autor: Ricardo Meza Díaz
#Fecha: 14 Febrero 2018
#Ejercicio 1C.

###############SEGMENTO DE DATOS##########################################
.data 

dato1:  .word 20
dato2:  .word 10
res:    .word 0            #Resultado de la division entre dato1 y dato 2.


#####################SEGMENTO DE TEXTO#####################################
.text 
.globl main
main: 
        
    lw $t1,dato1($0)             #Carga dato1 en t8 
    lw $t2,dato2($0)             #Carga dato2 en t9
    lw $t3,res($0)

    and $t0,$t0,$0
    beq $t2,$t0,esCero 

    slt $t4,$t2,$0              #slt rd, rs, rt Activa si menor.Si rs es menor que rt camboa a 1 y sino cambia a 0.
    bne $t4,$t0,esCero          #bne rs, rt, etiqueta.Salto si distinto.Salta a etiqueta si rs es diferente de rt.

    div $t3,$t1,$t2
    
    j termina
    
    esCero: lw $t3,($t0)
     
    termina: sb $t3,res($0)
     
    #Fin de programa	
	li $v0, 10
	syscall
    
    

 
         

    
   
             
    





    

