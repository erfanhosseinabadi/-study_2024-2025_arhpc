%include 'in_out.asm'  
SECTION .data 
filename db 'readme-1.txt', 0 
msg db 'enter a string to write in the file: ', 0 

SECTION .bss 
contents resb 255 

SECTION .text 
global _start 
_start: 
    mov eax, msg 
    call sprint 
    mov ecx, contents 
    mov edx, 255 
    call sread 

    mov eax, 5                  
    mov ebx, filename             
    mov ecx, 1                   
    mov edx, 0666                  
    int 80h 
    mov esi, eax                 

    mov eax, contents 
    call slen                    
    mov edx, eax               
    mov ecx, contents             
    mov ebx, esi                   
    mov eax, 4                     
    int 80h 

    mov eax, 6                      
    mov ebx, esi                  
    int 80h 

    call quit  
