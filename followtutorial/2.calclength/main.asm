section .data
  msg db 'hello world', 10

section .text
  global _start

_start:
  mov rbx, msg
  mov rax, rbx

nextchar:
  cmp byte [rax], 0
  jz finished
  inc rax
  jmp nextchar

finished:
  sub rax, rbx

  mov rdx, rax
  mov ecx, msg
  mov rbx, 1
  mov rax, 4
  int 80h

  mov rbx, 0
  mov rax, 1
  int 80h
