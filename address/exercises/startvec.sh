#!/bin/bash

FILE="./vectororder"

nasm -f elf64 "$FILE.asm" && ld "$FILE.o" -o "$FILE.x" && "$FILE.x"
