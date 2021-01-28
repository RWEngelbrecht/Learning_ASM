global _putchar_asm

section .text
_putchar_asm:

	push	rdi					; store char on stack
	mov		rsi, rsp			; move argv[0] of puts() that rsp is pointing to to rsi
	pop		rcx					; pop value off stack to release stored int, also increments ptr
	mov		rax, 0x02000004		; syscall for write() ;; rax holds vals returned from funct in register
	mov		rdi, 1				; ready argv[0] for write()
	mov		rdx, 1				; ready argv[2]
	syscall

	ret
