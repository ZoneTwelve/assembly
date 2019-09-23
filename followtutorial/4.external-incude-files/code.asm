%include 'function.asm'

section .data
  msg1 db 'hello world', 10, 0
  msg2 db 'this is a message from msg2', 10, 0
  msg3 db 'welcome to assemblys world', 0

section .text
  global _start

_start:
  mov rax, msg1
  call sprint

  mov rax, msg2
  call sprint

  mov rax, msg3
  call sprintLF

  call quit
