	.text
	.globl main
main:
	li $t0,2
	li $t1,10
	li $t2,0
	loop:
		ble $t0,0,exit
		add $t2,$t2,$t1
		addi $t0,$t0,-1
		j loop
	exit:
		move $a0,$t2
		li $v0,1
		syscall
		li $v0,10
		syscall