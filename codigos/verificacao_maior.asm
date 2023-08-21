.data
	msgmaior: .asciiz "O primeiro é maior que o segundo"
	msgmenor: .asciiz "O segundo é maior que o primeiro"
.text
	li $s0,5
	li $s1,8
	
	bgt $s0, $s1, mensagemmaior
	
	li $v0, 4
	la $a0, msgmenor
	syscall
	
	li $v0, 10
	syscall 
	
mensagemmaior: 
	li $v0, 4
	la $a0, msgmaior
	syscall 