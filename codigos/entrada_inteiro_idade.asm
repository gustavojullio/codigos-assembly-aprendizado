.data
	entrada: .asciiz "Digite sua idade: "
	saida: .asciiz "Sua idade é : "

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
	