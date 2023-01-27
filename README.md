# Assembly Language Programming
        Learning Assembly, machine code and low-level programming. Subject made with Computer Organization and Architecture.

# Introduction
> Arquitetura IA32_64 (x86.64)
> Assembly

## Linguagem de máquina (baixo nível)
        É a linguagem que o computador realmente entende e executa
        Composta por strings binárias

## Linguagem de montagem (código intermediário)
        Transcrição de primeiro nível da linguagem de montagem
                - normalmente de 1-para-1
        Usa-se textos e números para compreensão humana

## Memória
        > Vetor de bytes que pode ser alcançado de maneira aleatória
        > Cada posição de bytes possui um endereço único

        "Espaços de armazenamento de 8 bits"
        RAM vs DAM (HD)
        - RAM é acesso aleatório (não precisa passar por outros dados antes de chegar no correto)
        - DAM geralmente vai no cluster procurar pela localização do dado

## Unidade de processamento
        - Ler uma instrução e processar

## Montadores
        Transforma LM em Binário
        NASM (Netwide Assembler)
        Sintaxe Intel: MNEMÔNICO DESTINO, FONTE

## Compilando
        - gcc nome.c -o nome.x // compilação padrão do c
        - nasm -f elf64 hello.ams // montar o .o (arquivo objeto)
        - ld hello.o -o  helloA.x // linkar cabeçalho e arquivos

## Start
- _start é o padrão de início, primeira instrução à ser executada (main)
- .data ('variáveis')
- .text (código)

## ArchLinux Rocks!!! 
