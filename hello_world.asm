; hello_world.asm

section .text:
	

section .data:
	message: db "Hello Wordl!", 0xA
	message_len equ $-message	; nasm should put len of message var into message_len var?
	
