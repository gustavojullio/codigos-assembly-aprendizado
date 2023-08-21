.data

.text
	li $t0, 4567
	li $t1, 8910
	add $s0, $t0, $t1
	
	li $v0, 1
	move $a0, $s0
	syscall 
	