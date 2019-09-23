print:
  call _strlen
  mov rbx, 1
  mov rax, 4
  int 80h
  ret

_strlen:
  push rcx
  mov rdx, 0
  mov rbx, 0
  call _calcChar
  mov rcx, 0
  pop rcx
  ret

_calcChar:
  inc rcx
  inc rdx
  cmp byte [rcx], 0
  jnz _calcChar
  ret

exit:
  mov rbx, 1
  mov rax, 1
  int 80h
  ret
