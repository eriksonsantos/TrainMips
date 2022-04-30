.data

.macro finalizarPrograma

	li $v0,10 #Prepara o programa para ser finalizado
	syscall #execute

.end_macro

.macro printf (%str)
	
	.data #criaçao de variaveis
	
		msg: .asciiz %str
	
	.text #Prepara o processador para receber string
	
		li $v0,4  	#Preparando o processador para imprimir uma string
		la $a0,msg	#a0 = msg  *pega o endereço da memoria de msg
		syscall 	#execute
	
.end_macro

.text
.globl principal

principal:
printf("Olá mundo\n")
finalizarPrograma