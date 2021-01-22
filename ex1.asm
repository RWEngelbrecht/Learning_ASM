; first 2 lines defines entry point where cpu will
; start executing commands from
global _start		; global: makes identifier accessable to linker
_start:				; _start (ie. identifier): creates a label (like a location in code)
	mov eax, 1		; move: instruction, eax: register; 1: integer, moves 1 into eax register 
	mov ebx, 42
	int 0x80		; int: interrupt (cpu transfers control to interrupt handler), 0x80: interrupt handler for system calls
					; system call made by 0x80 determined by eax register. 1 in eax means system exit
