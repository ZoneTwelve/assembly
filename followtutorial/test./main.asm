section .data
  msg1 db 'hello world', 10
  msg2 db 'message 2', 0

section .text
  global _start

_start:
  mov rdx, 12
  mov rcx, msg2
  mov rbx, 1
  mov rax, 4
  int 128

  mov rbx, 0
  mov rax, 1
  int 128

