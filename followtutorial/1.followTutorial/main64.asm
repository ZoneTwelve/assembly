section .data
  msg db 'hello world', 10 ; 10 = 0Ah

section .text
  global _start

_start:
  mov rdx, 13
  mov rcx, msg
  mov rbx, 1
  mov rax, 4
  int 80h

  mov rbx, 0
  mov rax, 1
  int 80h
