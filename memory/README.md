# Memory

## Hierarchy
1. Registrators
2. Cache
3. RAM
4. Disk
5. Tape

## Registrators
- Faster (ever)
- Close to CPU
- [](../assets/02.png)
- Visible or not visible (just to OS)
- General purpose (data and address) or control (flags and pointers)

## x32 (4 bytes)
- General
- EAX EBX ECX EDX
- Segmentos
- ESI EDI EBP ESP

## x64 (8 bytes)
- General
- RAX RBX RCX RDX, R8 - R15
- Segmentos
- RSI RDI RBP RSP

- BP and SP is to STACKS

## Access
- RAX: 8 bytes
- EAX: 4 bytes
- AX: 2 bytes
- AL: 1 byte low
- AH: 1 byte high

Pressure on Register (compilers)

## MOV

MOV destino, fonte

## RDX
- ao inserir 4 bytes edx em um rdx, ele não só sobrescreve, mas apaga o resto (reseta)
- podemos mover (LEA) o conteúdo das LABELS!! (_start, fim, etc) -> conteúdo será endereço delas