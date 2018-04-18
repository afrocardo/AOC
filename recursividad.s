	.data

N: 		.word 8
vect: 	.word 29, 14, 15, 1, 6, 10, 32, 12

#------------------------------------------------------
		  .text		# Zona de código
main: 
	la $a0, vect
	la $a1, N
	lw $a1, 0($a1)
	
	sw $fp, -4($sp)
	addi $fp, $sp, -4

	sw   $ra, -4 ($fp)	
	addi $sp, $fp, -4	
	
	jal funMax
	
	addi $sp, $fp, 4
	lw $ra, -4($fp)	
	lw $fp, 0($fp)
	
	move $t0, $v0
	
	li $v0, 1	#muestro por pantalla
	move $a0, $t0
	syscall
	
	
	li $v0, 10			#Finalizar el programa 
	syscall
	

funMax: 
	li $t0, 2
	bge $a1, $t0, fin0
	lw $v0, 0($a0)
	jr $ra

	
	fin0: 		
		sra $a1, $a1, 1	#N/2 
		sw $fp, -4($sp)
		addi $fp, $sp, -4
		
		sw $ra, -4($fp)
		sw $a0, -8 ($fp)
		sw $a1, -12 ($fp) 
		addi $sp, $fp, -12 
		jal funMax
		
		lw   $a0, -8 ($fp)
		lw   $a1, -12($fp)
		
		sw $v0, -8($fp)
		sll $t0, $a1, 2	#(N/2)*4
		
		add $a0, $a0, $t0
		jal funMax
		
		addi $sp, $fp, 4	
		lw   $t0, -8 ($fp)
		lw $ra, -4($fp)
		lw $fp, 0($fp)
		
		ble $t0, $v0, max2
		move $v0, $t0

		
	max2:
		jr $ra
	
