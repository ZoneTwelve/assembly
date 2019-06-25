;print hello world example
section .data
  text db "hello world", 10 
  ; text is variable
  ; db is define bytes
  ; 10 mean newline (\n)

section .text
  global _start

main:
  mov rax, 1
  mov rdi, 1
  mov rsi, text
  mov rdx, 14
  syscall

  mov rax, 60
  mov rdi, 0
  syscall
