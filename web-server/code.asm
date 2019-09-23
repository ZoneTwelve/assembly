%include 'function.asm'

section .data
  msg1 db 'hello ', 0
  msg2 db 'john', 0

section .text
  global _start

_start:
  mov rcx, msg1
  push rcx
  mov rcx, msg2
  push rcx
  pop rcx
  pop rcx
  call print
  call exit
