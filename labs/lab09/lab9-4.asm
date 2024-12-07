%include 'in_out.asm'

SECTION .data
msg_func db "Function: f(x) = 5 * (2 + x)", 0
msg_result db "Result: ", 0

SECTION .bss
x_input resd 1

SECTION .text
GLOBAL _start

calculate_f:
  push ebp
  mov ebp, esp
  mov eax, [ebp+8]
  add eax, 2
  mov ebx, 5
  mul ebx
  mov esp, ebp
  pop ebp
  ret

_start:
  mov eax, msg_func
  call sprintLF
  pop ecx
  pop edx
  sub ecx, 1
  mov esi, 0

next:
  cmp ecx, 0h
  jz _end
  pop eax
  push eax
  call calculate_f
  add esi, eax
  loop next

_end:
  mov eax, msg_result
  call sprint
  mov eax, esi
  call iprintLF
  call quit
