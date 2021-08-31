extern  _malloc						; include malloc
extern  _strlen					; include strlen
extern  _strcpy					; include strcpy
extern  ___error					; include error

section .text
				global  _strdup	; entrypoint

_strdup:							
				cmp rdi, byte 0		; if not empty string
				je .error			; jump error
				jmp	.start			; start
.start:
				push rdi			; set stack rdi
				call _strlen		; strlen() return rax with len
				inc rax				; rax++ for \0

				call _malloc		; malloc() return rax
				cmp rax, 0			; if rax == null
				je .malloc_error	; show malloc error

				pop rdi				; unset stack rdi
				jmp .end

.end:
				mov rsi, rdi		; rsi (empty) = rdi(argument)
				mov rdi, rax		; rdi = rax
				call _strcpy		; strcpy()
				ret				;

.error:
				mov rax, 0			; rax = 0
				ret

.malloc_error:
				mov rax, -1			; rax = -1
				ret