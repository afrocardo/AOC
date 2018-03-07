
#Autor: Ricardo Meza Díaz
#Fecha: 28 Febrero 2018
#Ejercicio 5.Modificar el código anterior para que el programa respete el convenio de paso de parámetros por referencia.
	  	

###############SEGMENTO DE DATOS##########################################
.data                               #Zona de datos

dato1:	  .word   1
dato2:	  .word   3
dato3:	  .word   5
dato4:	  .word   4
res1:	  .space  4
res2:	  .space  4           


#####################SEGMENTO DE TEXTO#####################################
.text                               #Zona de código 
.globl main
     
    #Para cargar direcciones usamos la instruccion la.
    # Programa invocador

    main:	    la  $a0, dato1($0)                #Paso por ref,por convenio.Ejemplo.
		        la  $a1, dato2($0)                
                la $a2,res1($0)                   
    primera:  	  jal suma
		  la  $a0, dato3($0)
		  la  $a1, dato4($0)                      #Paso por ref,por convenio.Ejemplo.
		  la  $a2, res2($0)                     
    segunda:     jal suma
		                   
      #Fin de programa	
	 li $v0, 10
	 syscall

      # Subrutina

    suma: 
        lw $t0, ($a0)
    	lw $t1, ($a1) 
    	add $v0, $t0, $t1
    	sw $v0, ($a2)
    	jr  $ra              
		  

       

    
    

 
         

    
   
             
    





    

