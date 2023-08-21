.data
	msg: .asciiz "Rumo ao 4° período"
.text
	li $v0, 4
	la $a0, msg
	syscall
