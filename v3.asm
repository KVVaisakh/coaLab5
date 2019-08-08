	.data
		arr: .word 10 22 15 40
		end:
	.text
	.globl main
main:
	la $s0, arr
	la $s1, end
	subu $s1, $s1, $s0
	srl $s1, $s1, 2
	li $t0,0
	li $t1,0
	li $t2,1
	loop:
		bge $t1,$s1,exit
		lw $t4,0($s0)
		and $t3,$t2,$t4
		bne $t3,0,skip
		add $t0,$t0,$t4
		skip:
		addi $s0,$s0,4
		addi $t1,$t1,1
		j loop
	exit:
		move $a0,$t0
		li $v0,1
		syscall
		li $v0,10
		syscall