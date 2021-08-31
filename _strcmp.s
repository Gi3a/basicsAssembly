section	.text
			global	_strcmp

_strcmp:
			mov		rax, 	0					; rax = 0 accum
			mov		rbx, 	0					; rbx = 0 free register
			mov		rcx, 	0					; rcx = 0 counter
			jmp		.loop

.loop:
			mov		al,		byte [rdi + rcx]	; rax(al) = s1[i]
			mov		bl,		byte [rsi + rcx]	; rbx(bl) = s2[i]
			cmp		al,		bl					; al == bl ?
			jne		.nequal						; al != bl
			je		.equal						; al == bl

.nequal:
			sub		rax,	rbx					; rbx - rax
			ret									; return

.equal:
			cmp		al,		0					; al == 0 ?
			je		.ret						; all == 0 => exit
			inc		rcx							; rcx++
			jmp		.loop						; loop()

.ret:
			mov		rax,	0					; rax = 0
			ret									; return