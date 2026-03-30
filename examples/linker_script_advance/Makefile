CC = arm-none-eabi-gcc
LL = arm-none-eabi-ld
OBJDUMP = arm-none-eabi-objdump

CFLAGS = -g

LD_SCRIPT = ld_script.ld

TARGET = output.elf

MAP = output.map

SRC = demo.c prog1.c prog2.c

OBJ = $(SRC:.c=.o)

ASM = $(SRC:.c=.o.s)

.PHONY: all compile link disassemble clean

all: compile link disassemble

compile:
	$(CC) $(CFLAGS) -c prog1.c -o prog1.o
	$(CC) $(CFLAGS) -c prog2.c -o prog2.o
	$(CC) $(CFLAGS) -c demo.c -o demo.o

link:
	$(LL) $(OBJ) -o $(TARGET) -T $(LD_SCRIPT) -Map $(MAP)

disassemble:
	$(OBJDUMP) -D demo.o > demo.o.s
	$(OBJDUMP) -D prog1.o > prog1.o.s
	$(OBJDUMP) -D prog2.o > prog2.o.s
	$(OBJDUMP) -D $(TARGET) > $(TARGET:elf=elf.s)

clean:
	rm -f $(OBJ) $(ASM) $(TARGET) $(TARGET:elf=elf.s) $(MAP)
