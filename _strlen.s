section	.text
			global	_strlen

_strlen:
			mov		rax,		0		; set 0
			jmp		.loop

.loop:									; loop
			cmp [rdi + rax],	byte 0	; compare current position == \0
			je		.ret				; current_position == \0 => return
			inc		rax					; rax++
			jmp 	.loop				; looping

.ret:		ret							; return