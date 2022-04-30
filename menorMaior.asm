.data

pergunta: 	.asciiz "Digite a sua idade: "
msg1: 		.asciiz	"Você é maior de idade"
msg2: 		.asciiz "Você é menor de idade"


.text

li $v0, 4
la $a0, pergunta
syscall

li $v0,5
syscall 

move $t1, $v0
li $t0, 18
blt $t1,$t0,menor	#Desvie se $t1 for menor do que 18 para o bloco menor
bge $t1,$t0,maior	#Desvie se t1 for maior ou igual 18 para o bloco maior

menor:

li $v0,4 
la $a0, msg2
syscall
li $v0,10
syscall



maior:
li $v0, 4
la $a0, msg1
syscall 
li $v0 ,10
syscall


