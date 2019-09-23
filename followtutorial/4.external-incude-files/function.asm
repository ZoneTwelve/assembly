slen:
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

sprint:
  push rdx
  push rcx
  push rbx
  push rax
  call slen

  mov rdx, rax
  pop rax

  mov rcx, rax
  mov rbx, 1
  mov rax, 4
  int 80h

  pop rbx
  pop rcx
  pop rdx
  ret

quit:
  mov rbx, 0
  mov rax, 1
  int 80h
  ret

sprintLF:
    call    sprint

    push    rax
    mov     rax, 10
    push    rax
    mov     rax, rsp
    call    sprint
    pop     rax
    pop     rax
    ret
