#!/bin/bash
# Usage: ./build.sh filename (without .asm)

if [ -z "$1" ]; then
  echo "Usage: ./build.sh <filename without .asm>"
  exit 1
fi

nasm -f elf64 -o $1.o $1.asm && ld -o $1 $1.o && echo "Built $1 successfully!"
