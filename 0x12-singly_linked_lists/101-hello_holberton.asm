	extern	printf		; the printf function

	        section .data		
msg:		db "Hello, Holberton", 0
fmt:	    	db "%s", 10, 0          ; The printf format, with new line "\n"

	        section .text		

	        global main		
main:					; main program
	        push    rbp

		mov	rdi,fmt
		mov	rsi,msg
		mov	rax,0		; Format specifier
	        call    printf		; Call printf function

		pop	rbp		; restore stack

		mov	rax,0
		ret		
