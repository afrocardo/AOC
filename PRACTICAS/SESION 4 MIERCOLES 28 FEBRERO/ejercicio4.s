
#Autor: Ricardo Meza Díaz
#Fecha: 28 Febrero 2018
#Ejercicio 4.Comprobar si el código generado en el ejercicio 3 cumple el convenio de paso de parámetros por valor. 
#En el caso de que no lo cumpla, realice las 
#modificaciones necesarias para que lo haga.
	  	

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
     

    # Programa invocador

    main:	  lw  $a0, dato1($0)                #Paso por valor,por convenio.Ejemplo.
		  lw  $a1, dato2($0)
    primera:  	  jal suma
		  sw  $v0, res1($0)
		  lw  $a0, dato3($0)
		  lw  $a1, dato4($0)
    segunda:     jal suma
		    sw  $v0, res2($0)                   #Paso por valor,por convenio.Ejemplo.
      #Fin de programa	
	 li $v0, 10
	 syscall

      # Subrutina

    suma:	  add $v0, $a0, $a1                 #Paso por valor,por convenio.Ejemplo.
		  jr  $ra
       

    
    

 
         

    
   
             
    





    

