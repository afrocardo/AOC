
#Autor: Ricardo Meza Díaz
#Fecha: 21 Febrero 2018
#Ejercicio 3.Realice la traducción del siguiente programa, escrito en pseudocódigo, a ensamblador de MIPS.

#sum = 0
#for (i = 0; i < n; i++) {
#sum = sum + i
#}
#Mapeo de registros:
#n: $t0, i: $t1, sum: $t2

###############SEGMENTO DE DATOS##########################################
.data 

n:   .word 2
i:   .word 0
sum: .word 0            


#####################SEGMENTO DE TEXTO#####################################
.text 
.globl main
main: 
   
    lw $t0,n($0)
    lw $t1,i($0)
    lw $t2,sum($0)
    
    and $t2,$t2,$0
    and $t1,$t2,$0
    
    slt $t3,$t1,$t0
    beqz $t3,finalProg
        
    loop: 
        add $t2,$t2,$t1
        addi $t1,$t1,1
        slt $t3,$t1,$t0
        bnez $t3,loop    


    finProg: 
            #Fin de programa	
	       li $v0, 10
	       syscall
    
    

 
         

    
   
             
    





    

