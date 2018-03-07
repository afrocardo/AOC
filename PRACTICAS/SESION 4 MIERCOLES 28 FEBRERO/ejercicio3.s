
#Autor: Ricardo Meza Díaz
#Fecha: 28 Febrero 2018
#Ejercicio 3.Dado este código modificalo para que funcione correctamente.
	  	
#	  	  .data		
#dato1:	  .word   1
#dato2:	  .word   3
#dato3:	  .word   5
#dato4:	  .word   4
#res1:	  .space  4
#3res2:	  .space  4

#		  .text		

# Subrutina

#suma:	  add $v0, $a0, $a1
#		  jr  $ra

# Programa invocador

#main:	  lw  $a0, dato1($0)
#		  lw  $a1, dato2($0)
#primera:  	  jal suma
#		  sw  $v0, res1($0)
#		  lw  $a0, dato3($0)
#		  lw  $a1, dato4($0)
#segunda:     jal suma
#		  sw  $v0, res2($0)
#Modificación.El main debe ejecutarse al comenzar el código.
#y la subrutina suma,debe estar al final del programa.debajo de la sentencia de finalizacion
#del programa,para que el progama finalize despues de terminar la la suma de la etiqueta segunda.


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

    main:	  lw  $a0, dato1($0)
		       lw  $a1, dato2($0)
    primera:  	  jal suma
		  sw  $v0, res1($0)
		  lw  $a0, dato3($0)
		  lw  $a1, dato4($0)
    segunda:     jal suma
		    sw  $v0, res2($0)
      #Fin de programa	
	 li $v0, 10
	 syscall

      # Subrutina

    suma:	  add $v0, $a0, $a1
		  jr  $ra
       

    
    

 
         

    
   
             
    





    

