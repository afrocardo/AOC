
#Autor: Ricardo Meza Díaz
#Fecha: 28 Febrero 2018
#Ejercicio 7.¿Cuál es el problema de este código? Soluciónelo.
	  	


# Pseudocódigo:
# void question() {
# print(quest)
# waitForGiveUp()
# return
# }

#question:
#li $v0, 4 # print(quest)
#la $a0, quest
#syscall
#jal waitForGiveUp # waitForGiveUp()
#jr $ra # return

# Pseudocódigo:
# void waitForGiveUp() { ... }

#waitForGiveUp:
#...
#jr $ra # return


SOLUCION(ABAJO)

# Pseudocódigo:
# void question() {
# print(quest)
# waitForGiveUp()
# return
# }

question:
	li $v0, 4 # print(quest)
	la $a0, quest
	syscall
	
	move $t0, $ra
	jal waitForGiveUp # waitForGiveUp()
	move $ra, $t0
	jr $ra # return

# Pseudocódigo:
# void waitForGiveUp() { ... }

waitForGiveUp:
	...
	jr $ra # return


