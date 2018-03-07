
#Autor: Ricardo Meza Díaz
#Fecha: 21 Febrero 2018
#Ejercicio 1.Realice la traducción del siguiente programa, escrito en pseudocódigo, a ensamblador de MIPS. Cuando haya finalizado, intente minimizar el número de instrucciones ejecutadas sin alterar el sentido del programa.

#do {
#a = a + 3
#} while (a < b*2);
#Mapeo de registros:
#a: $t0, b: $t1


###############SEGMENTO DE DATOS##########################################
.data 

a: .word 2
bb: .word 4



#####################SEGMENTO DE TEXTO#####################################
.text 
.globl main
main: 
   
    lw $t0,a($0)
    lw $t1,bb($0)
    add $t1,$t1,$t1
    
    loop: 
        addi $t0,$t0,3
        slt $t2,$t0,$t1     #slt rd, rs, rt. Activa si menor.Pone el registro rd a 1 si rs es menor que rt y a 0 en caso contrario.
        bnez $t2,loop       #bnez $r1,etiqueta.Salto si no es igual a cero.Donde "$r1" es un registro y "etiqueta" es a donde se desea saltar.
       
    #Fin de programa	
	li $v0, 10
	syscall
    
    

 
         

    
   
             
    





    

