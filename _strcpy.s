section .text
			global	_strcpy

_strcpy:
			mov		rcx,    0					; set 0
			jmp		.loop						; jmp to loop

.loop:
			mov		rax,			[rsi + rcx] ; from src to rax
			mov		[rdi + rcx],	rax			; from rax to dst
			inc		rcx							; rcx++
			cmp 	[rsi + rcx],	byte 0		; compare current position + rax with \0
			je		.ret						; if error to ret
			jnz		.loop						; jump to start if no zero

.ret:		mov		rax,			rdi			; move dst to rax
			ret									; return rax