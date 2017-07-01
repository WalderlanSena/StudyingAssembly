;
; Exit - terminate the calling process
; License   : GPL 
; Developer : Walderlan Sena <eu@walderlan.xyz>
; Site      : https://www.walderlan.xyz
; Github    : https://www.github.com/WalderlanSena


section .text
  global _start

_start:
  
  mov ebx, 0 ; valor de retorno para o SO
  mov eax, 1 ; valor da syscall exit(sys_exit)
  int 0x80   ; chamando o kernel
