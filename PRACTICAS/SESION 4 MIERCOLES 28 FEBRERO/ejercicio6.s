
#Autor: Ricardo Meza Díaz
#Fecha: 28 Febrero 2018
#Ejercicio 6.¿Cuál es el problema de este código? Soluciónelo.
	  	

# Pseudocódigo:
# c = sumOfSquares(x,y)
# c = c - x
# Mapeo registros: x => $t0, y => $t1, c => $t2

#move $a0, $t0 # (set up arguments)
#move $a1, $t1
#jal sumOfSquares # (call procedure)
#move $t2, $v0 # (get result)
#sub $t2, $t2, $t0 # c = c - x

# Pseudocódigo:
# int sumOfSquares(int a, int b) {
# return a*a + b*b
# }
# Mapeo registros: a => $a0, b => $a1, res => $v0
#sumOfSquares:
#mult $t0, $a0, $a0 # tmp1 = a*a
#mult $t1, $a1, $a1 # tmp2 = b*b
#add $v0, $t0, $t1 # res = tmp1 + tmp2
#jr $ra # return res

###############SEGMENTO DE DATOS##########################################
.data                               #Zona de datos

x: 	.word 2
y: 	.word 3
ce: .word 5          


#####################SEGMENTO DE TEXTO#####################################
.text                               #Zona de código 
.globl main
     
    main:
lw $t0, x($0)
lw $t1, y($0)
lw $t2, ce($0)

move $a0, $t0 # (set up arguments)
move $a1, $t1
jal sumOfSquares # (call procedure)
move $t2, $v0 # (get result)
sub $t2, $t2, $t0 # c = c - x

#Fin del programa
li $v0, 10			
syscall

sumOfSquares:
	mul $t3, $a0, $a0 # tmp1 = a*a
	mul $t4, $a1, $a1 # tmp2 = b*b
	add $v0, $t0, $t1 # res = tmp1 + tmp2
	jr $ra # return res


