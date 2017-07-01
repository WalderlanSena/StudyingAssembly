# Hello Word em Assembly
### Compilador: NASM version 2.11.08 | Sistema Operacional Ubuntu 16.04, 32bits

#### Compilação:
**1 - Compilando**
```
nasm -f elsf32 helloword.asm
```
**2 - Linkado**
```
ld -m elf_i386 -o helloword helloword.o
```
**3 - Executando**
```
./helloword
```
