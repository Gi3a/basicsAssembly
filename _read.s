extern	___error						; include error

section	.text
			global	_read			; entrypoint

_read:
			mov		rax,	0x2000003	; set read origin fuction
			syscall						; call system function
			jb		.error				; if error
			ret							; exit
			
.error:									; error function
			push	rax					; set in stack value rax
			call	___error			; call function
			pop		rax					; unset from stack
			mov		rax,	-1			; set rax -1
			ret							;exit