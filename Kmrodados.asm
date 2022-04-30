.data  #Variaveis

kp:  .asciiz "Digite o Km percorrido: "
kf:  .asciiz " Km finais = "


.text  #Codigo

li $v0, 4 	#Imprimir uma string
la $a0 , kp 	#a0 = kp
syscall

li $v0, 5 	#Ler um numero inteiro

syscall

move $t0 , $v0 
li $t1,15 
sub $t2, $t1, $t0  	#Subtração de t1 e t0, armazenando em t2   t2 = t1 -t0	

li $v0, 4 		#Imprimir uma string
la $a0, kf	
syscall 

li $v0, 1 		#Imprimir um numero inteiro
la $a0 , ($t2) 	
syscall


li $v0, 10

syscall




