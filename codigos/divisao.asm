.data
	msg_resto : .asciiz "\n O resto da divisão de 11/2 é: "
	msg_quociente : .asciiz "O quociente da divisão de 11/2 é: "

.text
	li $t0, 11
	li $t1, 2
	div $t0, $t1
	
	#movendo o quociente
	mflo $s0
	#movendo o resto
	mfhi $s1
	
	li $v0, 4
	la $a0, msg_quociente
	syscall 
	
	li $v0, 1
	move $a0, $s0
	syscall 
	
	
	li $v0, 4
	la $a0, msg_resto
	syscall 
	
	li $v0, 1
	move $a0, $s1
	syscall 
	
	
	
