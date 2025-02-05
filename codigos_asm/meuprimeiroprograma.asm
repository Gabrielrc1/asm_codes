.data
msg: .asciiz "O resultado da soma é: "

.text
.globl main
main:
	li $t0, 10
	li $t1, 20
	add $t2, $t0, $t1
	
	#Exibir mensaegm na tela
	li $v0, 4 #imprimir string
	la $a0, msg
	
	syscall
	
	#Exibir o resultado na tela
	li $v0, 1 #imprimir inteiro
	move $a0, $t2
	
	syscall
	
	#Finaliza o programa
	li $v0, 10 #codigo de saída do programa
	
	syscall