.data
	entrada: .asciiz "Digite um nome: "
	saida: .asciiz "O nome é: "
	nome: .space 30

.text
	li $v0, 4
	la $a0, entrada
	syscall 
	
	li $v0, 8
	la $a0, nome
	la $a1, 30
	syscall 
	
	li $v0, 4
	la $a0, saida
	syscall
	
	li $v0, 4
	la $a0, nome
	syscall