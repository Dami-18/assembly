; These are comments in assembly

global _start

section .text

_start:

	mov rax, 60
	mov rdi, 8
	syscall
