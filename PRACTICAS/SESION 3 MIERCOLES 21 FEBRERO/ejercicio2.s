#Autor: Ricardo Meza Díaz
#Fecha: 21 Febrero 2018
#Ejercicio 2.Realice las traducciones del siguiente programa, escrito en pseudocódigo, a ensamblador de MIPS.

#while (a <= c + 4) { a = a + 3 }
#b = b + a
#Mapeo de registros:
#a: $t0, b: $t1, c: $t2
###############SEGMENTO DE DATOS##########################################
.data 

a:  .word 5
bb:  .word 2
c:  .word 4

#####################SEGMENTO DE TEXTO#####################################
.text 
.globl main
main: 
   
    lw $t0,a($0)
    lw $t1,bb($0)
    lw $t2,c($0)
    addi $t2,$t2,4
    sle $t3,$t0,$t2
    beqz $t3,finProg 
    
    finProg: 
           add $t1,$t1,$t0
            #Fin de programa	
	       li $v0, 10
	       syscall
       
   
