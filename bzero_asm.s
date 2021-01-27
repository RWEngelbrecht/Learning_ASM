; writes n zeroed bytes

section .text
global _bzero_asm

_bzero_asm:
	push	rbp			; pushes value of _64 base pointer register to stack, dec rsp by sizeof(value)
	mov		rbp, rsp	; copies offset value of program stack to rbp
	mov		rcx, rsi	; copies source index into a count register, which store the loop count in iterative operations
	xor		rdi, rdi	; eq to: mov al, 0 ;; in 64-bit mode, store al val in rdi (?)
	rep		stosb		; rep: repeat; stosb: copies data item from al to destination string pointed to by

	leave
	ret
