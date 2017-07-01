; Hello Word em Assembly
; Develop: Walderlan Sena <eu@walderlan.xyz>
; License: MIT <>

; sszise_t write(int fd, const void *buf, size_t count);

section .data

  msg: db "Hello Word !", 0x0a ; Caracter de nova linha
  tam: equ $-msg               ; Posição atual menos o endereço de msg

section .text
  global _start

_start:

  mov edx, tam  ; count
  mov ecx, msg  ; *buf
  mov ebx, 1    ; fd
  mov eax, 4    ; numero da syscall write()
  int 0x80      ; chamando o kernel

  ; void _exit(int status);
  mov ebx, 0    ; valor do retorno da exit()
  mov eax, 1    ; codigo da syscall exit()
  int 0x80      ; chamando o kernel
