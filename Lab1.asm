.data							#This is the start of your data segment
	myData: .word 2024				#This is a 4 byte integer value and the variable is myData
	val1: .word 100
	val2: .word -100
	
	myMessage: .asciiz "Welcome to CSCI2035L\n\n"  #This is a text message and the the variable is myMessage 
	semester: .asciiz "Spring"
	newline: .asciiz "\n\n"
.text 							#This is the start of your code segment

	
	#Section 1 - print a text message
	li $v0, 4  					#Load value 4 to the register v0; this 4 is a command code to print a string
	la $a0, myMessage				#Load the address of the the variable myMessage to the register $a0
	syscall						#Make syscall (a system call) to display the data in myMessage 
	
	#Section 2 - print an integer value
	lw $t0, myData		#Load the myData value as a word into the $t0 register 
	li $v0, 1		#Load value 1 to the register v0; this 1 is a command code to print integer	
	add $a0, $t0, $zero	#Add the value in $t0 to the value in $zero register and store the result in $a0
	syscall			#Make syscall (a system call) to display the integer value 

	#Section 3
	li $v0, 4
	la $a0, newline
	syscall
	#Terminate the program
	li $v0, 4
	la $a0, semester
	syscall
	
