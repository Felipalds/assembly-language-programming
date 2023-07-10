# Assembly files
> The extension doesn't matter
- Is only a legible notation for architectures commands.
- It is transformed in binary by an assembler

## Assembly x Assembler
- Assembly is the language we write our programs.
- Assembler is the compiler of our language.
> Compiling and Interpreting is much more complicated than Assembling

## Assembly language
- Linux kernel is written 98% in C, but there are still 2% written in Assembly
- Assembly allows to access hardware "directly"
- Bootstrapping and initialization: During the early stages of the kernel boot process, the system is not yet fully initialized. Assembly language is often used in this phase to set up the initial environment, configure processor modes, establish memory mappings, and prepare the system for transitioning to higher-level languages like C.

## Compile x Linkedition
- Compile is transform your program in machine code.
- Linkedition 

## NASM
- Nasm is Netwide Assembler, is an assembler and disassembler for Intel x86 architecture.
- With NASM, we can write 16-bit, 32-bit and 64 bit programs.

## Binary Files
- It is just a sequence of bytes that are intended to represent something. Nothing more that that.
- Not only compiled files, but also audios, images and videos. Any type of content, whatsoever.

### Header
- Header is only a supplemental data placed at the beginning of a block of data. Every type of data includes
a header and a body (yes, like HTML!!!)
- For example, a GIF binary header can contain the sequence of images (the pointers of the block of data)

## Von Neumann Architecture
> A simple extension of Turing Machine
