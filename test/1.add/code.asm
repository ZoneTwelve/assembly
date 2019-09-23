section .text
  global _start

_start:
  mov rdx, 1
  jmp loop

loop:
  add rdx, rdx
  cmp rdx, 0xff
  jg exit
  jmp loop

exit:
  mov rbx, 1
  mov rax, 1
  int 80h
