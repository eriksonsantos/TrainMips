.data

msg: .asciiz "Hello Word"

.text

.globl principal

principal:

li $v0,4 #v0 = 4 prepara o processador para imprimir uma string
la $a0,msg #a0 = msg

syscall #Execute

li $v0,10 #Finaliza o programa
syscall 
