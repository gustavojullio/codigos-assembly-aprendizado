.data
	entrada: .asciiz "Digite a quantidade de alunos da sala: "
	saida: .asciiz "A quantidade de alunos é: "

.text
	li $v0, 4
	la $a0, entrada
	syscall 
	
	li $v0, 5
	syscall 
	
	move $s0, $v0
	
	li $v0, 4
	la $a0, saida
	syscall 
	
	li $v0, 1
	move $a0, $s0
	syscall 