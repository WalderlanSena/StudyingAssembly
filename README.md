<h1 align="center">Estudando Assembly</h1>
<p align="center">Repositório com código de estudo da linguagem de programação Assembly</p>

# O que é a linguagem Assembly?

**Assembly** ou **linguagem** de montagem é uma notação legível por humanos para o código de máquina que uma arquitetura 
de computador específica usa, utilizada para programar códigos entendidos por dispositivos computacionais, como 
microprocessadores e microcontroladores. [Fonte: wikipedia](https://pt.wikipedia.org/wiki/Assembly)

<h1 aling="center">
  Compilador <img src="http://www.nasm.us/images/nasm.png">
</h1>
<p align="center"><a href="http://www.nasm.us" target="_blank"><strong>Visite nasm.us &raquo;</strong></a></p>

## System	Calls

"As	system	calls	(ou	chamadas	do	sistema)	são	APIs	para	criar	uma	interface	entre	o	user	space	
(espaço	onde	o	utilizador tem	permissão	para	correr	os	seus	programas)	e	o	
kernel	space	(espaço	onde	o	sistema	operativo	correr	os seus programas	que	necessitam	de	um	
nível	de	permissão	superior).	Nos	já	usamos	algumas	system	calls	tais	como	o sys_write	e	o	sys_exit,	
para escrever	no	ecrã	e	terminar	o	programa,	respetivamente."
  
"Todas	as	system	calls	estão	listadas	em ```/usr/include/asm/unistd.h```,	juntamente	com	os	seus	números	
(o	valor	a colocarem	EAX	antes	de	chamar	a	interrupção	80h)."

eax | Nome    | ebx     | ecx | edx | esx | edi
----|---------|---------|-----|-----|-----|----
1   |sys_exit | int     |   - |  -  |  -  | - 
2   |sys_fork | struct pt_regs | -  | -   | -  
3   |sys_read | unsigned int |char * |size_t | - | -
4   |sys_write| unsigned int |const	char * | size_t | - | -
5   |sys_open |const	char * | int | int | - | -
6   |sys_close |unsigned	int | - | - | - | -

#### Exemplo de ultilização da SysCall exit

```assembly

section .text
  global _start ; informa o linker (ld) qual é o ponto de entrada

_start:     ; ponto de entrada

mov ebx, 0  ; valor de retorno para o SO(Sistema Operacional)
mov eax, 1  ; valor da syscall exit()
int 0x80    ; chamando o kernel
```

<p align="right">
  :page_with_curl: <a href="https://w3challs.com/syscalls/" target="_blank">Saiba mais sobre <strong>sysCalls</strong></a>
</p>

### :computer: Utilização

**Compilado um novo software**
```
nasm -f elf32 file.asm
```

**Linkando**
```
ld -m elf_i386 -o file file.asm
```

**Executando**
```
./file
```

## :page_facing_up: License
GNU **General Public License** (Licença Pública Geral), GNU GPL ou simplesmente GPL, é a designação da licença 
para software livre idealizada por Richard Matthew Stallman em 1989, no âmbito do projeto GNU da Free Software Foundation (FSF).
<https://www.gnu.org/licenses/gpl-3.0.en.html>

## Sobre 

<p align="center">
  <a href="https://www.mentesvirtuaissena.com/" target="_blank">
    <img src="http://www.walderlan.xyz/wal.png" title="Desenvolvedor: Walderlan Sena" width="180" height="180">
    <img src="http://www.walderlan.xyz/assembly.png" title="Sobre o projeto Studying Assembly" width="180" height="180">
  </a>
</p>
