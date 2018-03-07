
#Autor: Ricardo Meza Díaz
#Fecha: 14 Febrero 2018
#Ejercicio 2B.

###############SEGMENTO DE DATOS##########################################
.data 

#dato1:  .word 20
#dato2:  .word 10
res:    .word 0            #Resultado de la division entre dato1 y dato 2.


#####################SEGMENTO DE TEXTO#####################################
.text 
.globl main
main: 
        
    li $t1,0             #Carga en t1 un 0 
    #lw $t2,dato2($0)             #Carga dato2 en t2
    lw $t3,res($0)
    #Introduce el numero del dato1 t2.
    li $v0,5
    syscall
    
    add $t2,$v0,$0

    and $t0,$t0,$0
    and $t1,$t1,$0
  

    
    div $t2,$t3
    mfhi $t1                    #En t1 se guarda el resto en t1

    beq $t1,$t0,par             #Salto si igual.Si t1 es 0 salta a la etiqueta par y si no salta  la etiqueta termina.
    
    j termina
    
    par: add $t1,$t1,1
     
    termina: sb $t1,res($0)
            #Fin de programa	
	        li $v0, 10
	        syscall
     
  
    
    

 
         

    
   
             
    





    

