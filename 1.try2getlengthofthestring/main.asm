section .data
  msg db "hello world", 10
  len equ $-msg  ;count address of msg to $(self) how long

section .text
  global main ;make label available to linker standard gcc entry point

main:
  mov edx, len ; arg3, length of string to print
  mov ecx, msg ; arg2, pointer to string
  mov ebx, 1   ; arg1, where to write, screen
  mov eax, 4   ; write sysout command to int hex
  int 0x80     ; interrupt 80 hex, call kernel

  mov ebx, 0   ; exit code, 0 (normal, no error)
  mov eax, 1   ; exit command to kernel
  int 0x80     ; interrupt 80 hex, call kernel
