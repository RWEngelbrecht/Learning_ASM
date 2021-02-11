; writes n zeroed bytes to string

section .text
global _bzero_asm

_bzero_asm:
	mov		rcx, rsi	; copies source index into a count register, which store the loop count in iterative operations
	xor		al, al		; eq to: mov al, 0
	rep		stosb		; rep: repeat; stosb: copies data item from al to destination string pointed to by

	ret

