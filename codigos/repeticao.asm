.data

.text
move $t0, $zero
li $s1, 3

repeticao:
	beq $t0, 5, saida
	add $s0, $t0, $s1
	add $t0, $t0, 1
	j repeticao
	
saida:
	li $v0, 1
	move $a0, $s0
	syscall 
	
