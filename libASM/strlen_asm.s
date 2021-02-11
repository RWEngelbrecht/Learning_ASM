global _strlen_asm
	; size_t strlen(const char *s);
	
section .text

_strlen_asm:
	push	rbx					; save registers on stack
	push	rcx					;	NB: rbx preserved register

	mov		rbx, rdi			; rbx = rdi ; rdi == first param
	
	xor		al, al				; set al to 0
								; if set to 1, pointer decrements
	mov		rcx, 0xffffffff
	
	repne	scasb				; increment ptr while [rdi] != al
								; repne: repeat while not equal
								; scas: search for particular char
	sub		rdi, rbx			; rdi = rdi - rbx
	dec		rdi					; rdi -= 1 else len == len(s) + 1
	mov		rax, rdi			; move calculated len to return register

	pop		rbx					; restore saved registers
	pop		rcx

	ret
