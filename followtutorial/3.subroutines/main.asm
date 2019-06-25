section .data
  msg db 'hello world!', 10

section .text
  global _start

_start:
  mov rax, msg
  call strlen

  mov rdx, rax ; our function leaves the reuslt in rax
  mov rcx, msg
  mov rbx, 1
  mov rax, 4
  int 128

  mov rbx, 0
  mov rax, 1
  int 128

strlen:
  push rbx
  mov rbx, rax

nextchar:
  cmp byte[rax], 0
  jz finished
  inc rax
  jmp nextchar

finished:
  sub rax, rbx
  pop rbx
  ret
