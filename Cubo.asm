.data		#Dados

numero: 	.asciiz "DIgite um número: "
cubo: 		.asciiz "O cubo é: "


.text

li $v0, 4	#Imprimir uma string
la $a0, numero  # a0 = numero
syscall		#Execute

li $v0, 5 	#Leitura de um numero
syscall		#Execute

move $t1, $v0	#t1 = v0

mul $t2, $t1, $t1	#t2 = t1 * t1
mul $t3, $t2, $t1	#t3 = t1 * t2

li $v0, 4 	#Imprimir uma string
la $a0,cubo	#a0 = cubo
syscall

li $v0, 1 	#Imprimir um numero inteiro
la $a0, ($t3)	#a0 = t3
syscall

li $v0,10	# Finalizar o programa
syscall
 	

