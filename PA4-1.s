
	@	Put the required header information here
	@	Anthony De La Cruz
	@	PA4-1
	@	10/22/2018
	@	this program have an starval=1 and an endval=5 and makes a sum among the numbers in between these two that will be equal to 15
	@	R1 is equal zero which will be sum, R2 is equal starval=1 and R3 is equal endval=5

	.extern printf
	.extern scanf
	.global main
	.func main
main:
	PUSH	{LR}
	LDR	R2, =startval 	@ get addr of startval
	LDR	R2, [R2]	@ Load startval -> R2
	LDR	R3, =endval	@ get addr of endval
	LDR	R3, [R3]	@ Load endval -> R3
	@-------------
	@ Your code begins here
	@ Your code must put the final answer
	@ in R1.
	@-------------

	MOV R1, #0        @ move 0 that is sum into R1
loop:
	CMP R2, R3	  @ compare R2 and R3
	ADDLE R1, R1, R2  @ add R1 which is sum to R2 if less or equal
	ADDLE R2, R2, #1  @ add one to the value to sum with R2 and put into R2

	BLE loop	  @ if less or equal than the final result makes the loop go again

end:	

	
	@-------------
	@ Do NOT alter code past this line.
	@-------------
	LDR	R0, =out
	BL	printf
	POP	{PC}
	
.data
startval:	.word 1
endval:		.word 5
out:		.asciz "%d\n"
