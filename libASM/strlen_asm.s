global _strlen_asm

section .text

_strlen_asm:
	push rbx				; save registers on stack
	push rcx

	mov rbx, rdi			; rbx = rdi
	
	xor al, al				; set al to 0
							; if set to 1, pointer decrements
	mov rcx, 0xffffffff
	
	repne scasb				; repne: repeat while not equal; scas: search for particular char
	
	sub rdi, rbx
	dec rdi
	mov rax, rdi

	pop rbx
	pop rcx

	ret
