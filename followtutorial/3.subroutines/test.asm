section .data
  msg db 'message', 10 ; length = 8

section .text
  global _start

_start:
  mov rax, msg
  mov rsi, 0
  jmp _length

_length:
  cmp byte [rax], 0
  jz _pae
  inc rax
  inc rsi
  jmp _length

_pae:
  mov rbx, 1
  mov rax, 4
  mov rcx, msg
  mov rdx, rsi
  ;mov rcx, [rcx]
  int 80h

  mov rbx, 0
  mov rax, 1
  int 80h
