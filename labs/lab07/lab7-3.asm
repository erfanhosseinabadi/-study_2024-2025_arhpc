%include 'in_out.asm'

SECTION .data

msg_x: DB 'Enter x: ', 0
msg_a: DB 'Enter a: ', 0
res: DB 'Result: ', 0

SECTION .bss

x: RESB 80
a: RESB 80
result: RESB 80

SECTION .text

GLOBAL _start

_start:

mov eax, msg_x
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax, x
call atoi
mov edi, eax

mov eax, msg_a
call sprint
mov ecx, a
mov edx, 80
call sread
mov eax, a
call atoi
mov esi, eax

cmp edi, 2
jg case_greater_than_2

mov eax, 3
imul eax, esi
jmp print_result

case_greater_than_2:
sub edi, 2
mov eax, edi

print_result:
mov ebx, eax
mov eax, res
call sprint
mov eax, ebx
call iprintLF
call quit
