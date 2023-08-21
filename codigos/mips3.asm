.data

.text
	li $t0, 30
	li $t1, 20
	div $s0, $t0, $t1
	
	li $v0, 1
	move $a0, $s0
	syscall 
	