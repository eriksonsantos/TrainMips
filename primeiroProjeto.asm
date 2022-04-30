.data		#Criando as variaveis

	Lado1: .asciiz "Lado 1: "
	Lado2: .asciiz "Lado 2: "
	Lado3: .asciiz "Lado 3: "
	Lado4: .asciiz "Lado 4: "
	Soma: .asciiz "Soma => "


.text
	#Lado 1
	
	li $v0 ,4 	 #Preparar o processador para receber a string
	la $a0, Lado1	 #Recebe o endereço da variavel
	syscall		 #Executa as instruções
	
	li $v0, 5 	#Prepara para ler um numero inteiro
	syscall 	#Executa as instruções
	
	move $t1, $v0 	#O registrador $t1 recebe o valor armazenado em $v0
	
	
	#Lado 2
		
	li $v0 ,4 	#Preparar o processador para receber a string
	la $a0, Lado2 	#Recebe o endereço da variavel
	syscall 	#Executa as instruções
	
	li $v0, 5 	#Prepara para ler um numero inteiro
	syscall 	#Executa as instruções
	
	move $t2, $v0 	#O registrador $t1 recebe o valor armazenado em $v0
	
	
	#Lado 3
	
	li $v0 ,4 	#Preparar o processador para receber a string
	la $a0, Lado3 	#Recebe o endereço da variavel
	syscall 	#Executa as instruções
	
	li $v0, 5 	#Prepara para ler um numero inteiro
	syscall 	#Executa as instruções
	
	move $t3, $v0	 #O registrador $t1 recebe o valor armazenado em $v0
	
	
	#Lado 4
	
	li $v0 ,4 	#Preparar o processador para receber a string
	la $a0, Lado4	 #Recebe o endereço da variavel
	syscall 	#Executa as instruções
	
	li $v0, 5 	#Prepara para ler um numero inteiro
	syscall 	#Executa as instruções
	
	move $t4, $v0	 #O registrador $t1 recebe o valor armazenado em $v0
	
	
	add $t5, $t1, $t2  #Adiciona t5 o valor da soma em t1 e t2
	add $t6, $t3, $t4  #Adiciona t5 o valor da soma em t1 e t2
	add $t0, $t5, $t6  #Adiciona t5 o valor da soma em t1 e t2
	
	#Apresentação na tela
	
	li $v0 , 4 	#Preparar o processador para receber a string
	la $a0, Soma	 #Recebe o endereço da variavel
	syscall
	
	li $v0, 1 	#Prepara o processador para receber um inteiro
	la $a0 ,($t0) 	#Recebe o endereço de t0
	syscall
	
	
	
	li $v0, 10 	#Preparar para terminar o processo
	syscall 	#Executa as instruções
