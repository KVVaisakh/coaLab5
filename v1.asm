	.text
	.globl main
main:
	li $t0,1
	li $t1,0
	bne $t0,0,ne
	addi $t1,1
	j exit
	ne:	bne $t0,1,ne2
		addi $t1,-1
		j exit
		ne2:	
			li $t1,100
	exit:
		move $a0,$t1
		li $v0,1
		syscall
		li $v0,10
		syscall