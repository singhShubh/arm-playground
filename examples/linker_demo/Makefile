#
# Copyright (C) 2025 embeddedplayground.com. All rights reserved.
# Author: Shubham <shubham@nexusrtos.com>
#

#compiler
CC = arm-none-eabi-gcc

#linker
LL = arm-none-eabi-ld

# flags to include debug symbols 
CFLAGS = -g
TARGET = output.elf
SRCS = calc.c sum.c

# replace .c with .o in all the .c files in the list SRC
OBJS = $(SRCS:.c=.o)

# append .s in all the .o files in the list SRC
ASMS = $(OBJS:.o=.o.s)

RM = rm -f

# Phony targets prevent conflicts with actual files named 'all', 'compile', 'link', or 'clean'
.PHONY: all compile link asm clean

# Default target (executed by running 'make')
all: compile link asm

# Target to compile source files into object files (executed by 'make compile')
compile: $(OBJS)
        $(CC) $(CFLAGS) -c calc.c -o calc.o
        $(CC) $(CFLAGS) -c sum.c -o sum.o

# Target to link object files into the final executable (executed by 'make link')
link: $(OBJS)
        $(LL) ${OBJS} -o $(TARGET)

asm: compile link
        arm-none-eabi-objdump -D calc.o > calc.o.s      
        arm-none-eabi-objdump -D sum.o > sum.o.s        
        arm-none-eabi-objdump -D output.elf > output.elf.s      

# Target to clean up generated files (executed by 'make clean')
clean:
	$(RM) $(OBJS) $(ASMS) $(TARGET) output.elf.s

