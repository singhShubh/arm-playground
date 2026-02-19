
#
# Copyright (C) 2026 embeddedplayground.com. All rights reserved.
# Author: Shubham <shubham@nexusrtos.com>
#

# compiler
CC = arm-none-eabi-gcc

#linker
LL = arm-none-eabi-ld

# compiler-flags
CFLAGS = -g

#linker-script
LD_SCRIPT = ld_script.ld

# output file
TARGET = output.elf

#map file
MAP = output.map

# source file list
SRCS = demo.c prog1.c prog2.c

# object file list
OBJS = $(SRCS:.c=.o)

#
ASMS = $(SRCS:.c=.o.s)

RM = rm -rf

.PHONY: all compile link disassmeble clean

all: compile link disassmeble

compile:
	$(CC) $(CFLAGS) -c prog1.c -o prog1.o
	$(CC) $(CFLAGS) -c prog2.c -o prog2.o
	$(CC) $(CFLAGS) -c demo.c -o demo.o

link:
	$(LL) $(OBJS) -o $(TARGET) -T $(LD_SCRIPT) -Map $(MAP)

disassemble:
	arm-none-eabi-objdump -D prog1.o > prog1.o.s
	arm-none-eabi-objdump -D prog2.o > prog2.o.s
	arm-none-eabi-objdump -D demo.o > demo.o.s
	arm-none-eabi-objdump -D output.elf > output.elf.s

clean:
	$(RM) $(OBJS) $(ASMS) $(TARGET) $(MAP) output.elf.s
