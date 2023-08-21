.data
	entrada: .asciiz "Digite um número: "
	saida: .asciiz "O resultado é: "
	
.text
	li $s0, 0
	
while:	
	li $v0, 4
	la $a0, entrada
	syscall
	
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	beq $t1, 0, encerraPrograma
	
	blt $t1, $zero, somaNumeros
	
	j while
	
	
somaNumeros:
	add $s0, $s0, $t1
	
	j while
	
	
encerraPrograma:
	li $v0, 4
	la $a0, saida
	syscall
	
	li $v0, 1
	move $a0, $s0
	syscall
	
	li $v0, 10
	syscall
	


