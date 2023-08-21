.data
	entrada: .asciiz "Digite um número: "
	msgpar: .asciiz "O número digitado é par"
	msgimpar: .asciiz "O número digitado é ímpar"

.text
#mostra a mensagem
	li $v0, 4
	la $a0, entrada
	syscall

 #captura o valor
 	li $v0, 5
 	syscall
 	
 	li $s0, 2
 	
 	div $v0, $s0
 	
 	mfhi $s1
 	
 	beq $s1, $zero, imprimepar
 	
 	li $v0, 4
	la $a0, msgimpar
	syscall
	
	li $v0, 10
	syscall 
 	
imprimepar:
	li $v0, 4
	la $a0, msgpar
	syscall