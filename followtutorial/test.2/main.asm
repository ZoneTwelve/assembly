section .data
  msg1 db 'What is your name?' ; length = 18
  msg2 db 'Hello! '            ; length = 7

section .bss
  name resb 16

section .text
  global _start

_start:
  
  mov rcx, msg1
  mov rbx, 18
  call _print
  
  mov rbx, 8
  ; mov rcx, name
  call _get

  mov rcx, msg2
  mov rbx, 7
  call _print

  mov rcx, name
  mov rbx, 8
  call _print
  
  
  call _exit

_print:
  mov rax, 1
  mov rdi, 1
  mov rsi, rcx
  mov rdx, rbx
  syscall
  ret

_get:
  mov rax, 0
  mov rdi, 0
  mov rsi, name
  mov rdx, rbx
  syscall
  ret

_exit:
  mov rax, 60
  mov rdi, 0
  syscall
  ret
