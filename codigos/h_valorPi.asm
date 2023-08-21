.data 
	pi: .float 3.14159265359
	msg: .asciiz "O valor de PI é: "

.text
	lwc1 $f12, pi
	
	li $v0, 4
	la $a0, msg
	syscall 
	

	li $v0, 2
	syscall 
