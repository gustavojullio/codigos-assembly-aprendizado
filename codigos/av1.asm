.data
	entrada: .asciiz "Digite um número: "
	msgExcessao: "O número informado é menor ou igual a zero"
.text
	li $v0, 4
	la $a0, entrada
	syscall
	
	li $v0, 5
	syscall 
	
	
	move $t1, $v0
	move $t0, $t1
	
	ble $t1, $zero, excessao
	
	
laco:
	sub $t0, $t0, 1
	mul $s0, $t1, $t0
	move $t1, $s0
	beq $t0, 1, saida 
	j laco
	
saida:
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall

excessao: 
	li $v0, 4
	la $a0, msgExcessao
	syscall
	
	li $v0, 10
	syscall
	