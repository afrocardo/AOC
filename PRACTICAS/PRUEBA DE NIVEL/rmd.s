#Autor: Ricardo Meza
#Ejercicio 1 prácticas
#Realizar un programa,que a partir del segmento de texto siguiente,calcule la suma de los n primeros numeros almacenados en el array(utilizando bucle).
#MIPS no admite acceso no alineados en memoria.

.data 

n: word 10 
MemArray: .word 2,3,5,7,11,113,17,19,23,29,31,37,41,43,47


.text 
.globl main 
main: 
  li $v0, 5	#Lee un entero desde consola
	lw $a0, n	#Lo escribe en n
	syscall
	
	lw $s2, n
	mul $s2, $s2,  4
	li $s4, 0
	
	bucle:
		lw $s1, MemArray($s4)
		add $s3, $s3, $s1		
		addi $s4, $s4, 4	#Incrementamos el índice del array
		bne $s4, $s2, bucle
	
	
	lw $a0, ($s3)				
	li $v0, 4 		
	syscall		
	
	li $v0, 10
	syscall


#Uno que lleve los accesos al bucle

#Otro que cuente las iteraciones



