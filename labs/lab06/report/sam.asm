%include 'in_out.asm'
SECTION .data
msg:DB '3(x+10)-20',0
rem:DB 'Введите x: ',0
SECTION .bss
x: RESB 10
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov eax,rem
call sprintLF
mov ecx, x
mov edx, 10
call sread
mov eax,x
call atoi
xor edx,edx
add eax,10
mov ebx,3
mul ebx
sub eax,20
call iprintLF
call quit