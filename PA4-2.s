	@ Factorial
	@ Put the required header information here
	@Anthony De La Cruz
	@PA4-2
	@10/22/2018
	@ this program compute n!
	@R0 contains N, R2 is 1
	@
	@
	.extern printf
	.extern scanf
	.global main
	.func main
main:	PUSH	{LR}
	LDR	R0, =prompt	@ Get address of prompt
	BL	printf		@ Print prompt to screen
	LDR	R0, =in		@ Get addr of input format string
	LDR	R1, =n		@ Get addr of n
	BL	scanf		@ Put value in n using scanf
	LDR	R0, =n		@ Addr of n into R0
	LDR	R0, [R0]	@ n is now in R0
	@-------------
	@ Your code goes here.  Put n! in R2
	@-------------
	MOV R2, #1 @ move 1 into R2
	

loop:

	CMP R0, #1 	  @ compare R0 to 1
	MULGE R2, R2, R0  @ multiply R2 and R0 if greater or equal and put it into R2
	SUBGE R0, R0, #1  @ substract 1 to R0 if greater or equal to and make the program go decreasing
	BGE loop	  @ makes the loop go again if grater or equal to

	@-------------
	@ Do NOT alter code past this line.
	@-------------
	MOV	R1, R2
	LDR	R0, =out
	BL 	printf
	POP	{PC}
	
.data
n:	.word 0
prompt:	.asciz "Enter n: "
in:	.asciz "%d"
out:	.asciz "factorial is: %d\n"

