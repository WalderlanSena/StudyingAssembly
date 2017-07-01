; Ola - Programa que ler dados do usuario e re-imprime na tela
; Develop: Walderlan Sena <eu@walderlan.xyz>
; License: MIT <https://www.opensource.org/lincense/>
; github : https://www.github.com/WalderlanSena 
; Decription: Ultilização da syscall read, write, exit

section .data

  msg: db "Digite seu nome "  ; imprime a mensagem na tela
  tam: equ $-msg              ; posição atual menos o endereço do msg
  
  msgdisp: db "Ola "          ; mensagem de retorno que o usuario digitou
  tam2: equ $-msgdisp  

section .bss    ; dados não inicializados
  nome rest 10 

section .text   ; segmento de código
  global _start


_start:         ; ponto de entrada do programa
  
  ; Exemplo: ssize_t write(int fd, const void *buf, size_t count);

  ; Solicita o nome escrevendo a mensagem na tela

  mov edx, tam  ; count
  mov ecx, msg  ; *buf 
  mov ebx, 1    ; especifica a saída (stdout) 
  mov eax, 4    ; numero da syscall write(sys_write) 
  int 0x80      ; chama o kernel

  ; Exemplo: ssize_t read(int fd, void *buf, size_t count);
  
  ; Lendo o nome do usuario

  mov edx, 10   ; count
  mov ecx, nome ; *buf
  mov ebx, 2    ; fd - especifica a enturada (stdin)
  mov eax, 3    ; numero da syscall read(sys_read)
  int 0x80      ; chama o kernel
  
  ; Imprime resposta ao usuario na tela
  mov edx, tam2    ; count
  mov ecx, msgdisp ; mensagem a ser impressa
  mov ebx, 1       ; especifica a saida (stdout) 
  mov eax, 4       ; numero da syscall write(sys_write)
  int 0x80         ; chamando o kernel
  
  ; Imprime o dado optido
  mov edx, 10   ; cout
  mov ecx, nome ; valor a ser impresso
  mov ebx, 1    ; especifica a saida (stdout)
  mov eax, 4    ; numero da syscall write(sys_write)
  int 0x80      ; chamando o kernel
  
  ; Termina o programa void _exit(int status)
  mov ebx, 0    ; valor do retorno da exit()
  mov eax, 1    ; numero da system call (sys_exit)
  int 0x80      ; chama o kernel

