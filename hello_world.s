global _main					; directives

section .text
_main:
	mov		rax, 0x02000004		; system call for write() ;; rax: values returned from functions
	mov		rdi, 1				; file handle 1 is stdout ;; rdi: holds argv 0	;; ie. holds 1 to pass to write()
	mov		rsi, message		; move address of string to rsi register ;; rsi: holds argv 1  ;; ie. holds message to pass to write()
	mov		rdx, 13				; nr of bytes in message
	syscall						; os calls what's in rax
	mov		rax, 0x02000001		; sys call for exit()
	mov		rdi, 0				; set exit code to 0. can also use `xor rdi, rdi`
	syscall

section .data
message:
	db		"Hello, world!", 10

; generally, put code in .text section and constant data in .data section
; Instructions:
;	mov x,y		x <- y
;	and x,y		x <- x and y
;	or x,y		x <- x or y
;	xor x,y		x <- x xor y
;	add x,y		x <- x + y
;	sub x,y		x <- x - y
;	inc x		x += 1
;	dec x		x -= 1
;	syscall		invoke an os routine
;	db			pseudo instruction that declares bytes that'll be in memory
;				when program runs
;	pseudo instructions:	like db, dw, dd, dq, dt, do, dy and dz used to
;							declare initialized data
;							eg. db - define byte; dw - define word
;	some about registers:
;		function params are passed in rdi (argv 0), rsi (argv 1), rdx, rcx, r8, r9. additional params
;		pushed to stack
