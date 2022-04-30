.data 

msg: .asciiz "Hello Word"

.text
li $v0,4 #imprime uma string
la $a0,msg #a0 = msg

syscall
li $v0,10 #prepara para finalizar

syscall

