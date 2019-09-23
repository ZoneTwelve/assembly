section .data
  msg1 db 'hello ', 0
  msg2 db 'john', 0
  endl db 10

section .text
  global _start

_start:
  mov rcx, msg1
  push rcx
  mov rcx, msg2
  push rcx
  push 10
  pop rcx
  pop rcx
  pop rcx

  mov rbx, 1
  mov rax, 4
  mov rdx, 15
  int 80h

  mov rbx, 1
  mov rax, 1
  int 80h
